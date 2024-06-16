""" Plugins
" =============================================================================
call plug#begin()

Plug 'christoomey/vim-tmux-navigator'
Plug 'w0rp/ale'

call plug#end()

let g:tmux_navigator_no_mappings = 1
noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
noremap <silent> <c-p> :<C-U>TmuxNavigatePrevious<cr>

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

""" FUNCTIONS
" =============================================================================
function! GREP(args) abort
    let l:pattern = "."
    if len(a:args) > 0
       let l:pattern = a:args
    endif
    let l:tmpfile = tempname()
    execute 'silent !rg --line-number ' .. l:pattern .. ' | fzf  --multi --preview "batcat --color=always {}" --preview-window=up > ' .. fnameescape(l:tmpfile)
    try
        execute 'cfile ' .. l:tmpfile
        let l:qflist = getqflist()
        if len(l:qflist) > 1
            copen
        endif
        redraw!
    finally
        call delete(l:tmpfile)
    endtry
endfunction

function! FZF() abort
    let l:tmpfile = tempname()
    execute 'silent !rg --files | fzf --multi --preview "batcat --color=always {}" --preview-window=up' . '| awk ''{ print $1":1:0" }'' > ' .. fnameescape(l:tmpfile)
    try
        execute 'cfile ' .. l:tmpfile
        let l:qflist = getqflist()
        if len(l:qflist) > 1
            copen
        endif
        redraw!
    finally
        call delete(l:tmpfile)
    endtry
endfunction

function! ToggleQuickFix() abort
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
    redraw!
endfunction

""" Options
" =============================================================================
set tabstop=4
set shiftwidth=4
set expandtab

set hidden
set hlsearch
set incsearch

noswap

set colorcolumn=80

""" Mappings
" =============================================================================
let mapleader = ' '

command! -nargs=* Grep call GREP(<q-args>)
nnoremap <leader>fg :Grep<cr>
nnoremap <leader>ff :call FZF()<cr>
nnoremap <leader><space> :call ToggleQuickFix()<cr>
nnoremap <leader>w :qall!<cr>
nnoremap <leader>e :Lex<cr>

vmap < <gv
vmap > >gv

""" Visual
" =============================================================================
hi VertSplit cterm=none ctermfg=none term=none
hi StatusLine cterm=none ctermfg=none term=none
hi StatusLineNC cterm=none ctermfg=none term=none
set fillchars=stl:-,stlnc:-,vert:\|,fold:-,diff:-
set laststatus=2 " Hide statusline

" trailing whitespace
highlight SpaceError ctermbg=DarkRed guibg=DarkRed
autocmd ColorScheme * highlight SpaceError ctermbg=DarkRed guibg=DarkRed
autocmd BufWinEnter * match SpaceError /\s\+\%#\@<!$/
autocmd InsertEnter * match SpaceError /\s\+\%#\@<!$/
autocmd InsertLeave * match SpaceError /\s\+$/
autocmd BufWinLeave * call clearmatches()

