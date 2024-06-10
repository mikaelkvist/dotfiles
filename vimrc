let mapleader = ' '

" nnoremap <leader>q <cmd>20Lex<cr>
" 
" " tabs
" nnoremap tn <cmd>tabn<cr>
" tmap tn <c-w>:tabn<cr>
" nnoremap tp <cmd>tabp<cr>
" tmap tp <c-w>:tabp<cr>
" 
" " resize
" nnoremap <C-h> <cmd>vertical resize -5<cr>
" nnoremap <C-j> <cmd>resize -5<cr>
" nnoremap <C-k> <cmd>resize +5<cr>
" nnoremap <C-l> <cmd>vertical resize +5<cr>
" 
" " trailing whitespace
" highlight SpaceError ctermbg=DarkRed guibg=DarkRed
" autocmd ColorScheme * highlight SpaceError ctermbg=DarkRed guibg=DarkRed
" autocmd BufWinEnter * match SpaceError /\s\+\%#\@<!$/
" autocmd InsertEnter * match SpaceError /\s\+\%#\@<!$/
" autocmd InsertLeave * match SpaceError /\s\+$/
" autocmd BufWinLeave * call clearmatches()
" 
" " terminal
" map <leader>t :term ++close<cr>
" tmap <leader>t <c-w>:term ++close<cr>
" map <leader>T :tab term ++close<cr>
" tmap <leader>T <c-w>:tab term ++close<cr>

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

set hidden
set hlsearch
set incsearch

noswap

" buffers
" nnoremap <leader>b :buffers<cr>:b<space>
" nnoremap <leader>w <cmd>q!<cr>
" 
" " noinstall fzf
" function! FZF0() abort
"     let l:tempname = tempname()
"     execute 'silent ! grep -rl "" --exclude-dir ".*" | vim -'
"     try
"         execute 'cfile ' . l:tempname
"         redraw!
"     finally
"         call delete(l:tempname)
"     endtry
" endfunction
" 
" 
" " fzf
" function! FZF() abort
"     let l:tempname = tempname()
"     execute 'silent ! rg --files | fzf --multi --preview "batcat --color=always {}" ' . '| awk ''{ print $1":1:0" }'' > ' . fnameescape(l:tempname)
"     try
"         execute 'cfile ' . l:tempname
"         redraw!
"     finally
"         call delete(l:tempname)
"     endtry
" endfunction
" 
" function! NOGREP() abort
"     let l:tempname = tempname()
"     execute '! grep -rinl ' . shellescape(<q-args>)
" 
"     try
"         execute 'cfile ' . l:tempname
"         redraw!
"     finally
"         call delete(l:tempname)
"     endtry
" endfunction
" 
" function! GREP() abort
"     let l:tempname = tempname()
"     execute 'silent ! rg --files | fzf --multi --preview "batcat --color=always {}" ' . '| awk ''{ print $1":1:0" }'' > ' . fnameescape(l:tempname)
" 
"     try
"         execute 'cfile ' . l:tempname
"         redraw!
"     finally
"         call delete(l:tempname)
"     endtry
" endfunction
" 
" " :Files
" command! -nargs=* Files call FZF()
" command! -nargs=* Grep call GREP()
" command! -nargs=* Files0 call FZF0()
" command! -nargs=* NoGrep call NOGREP()
" 
" " \ff
" nnoremap <leader>ff :Files<cr>
" nnoremap <leader>fg :Grep<cr>
" nnoremap <leader>fF :Files0<cr>
" nnoremap <leader>fG :NoGrep<cr>
" 
" 
" "set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
" set grepprg=grep\ -rnilH
" nnoremap <Leader>g :silent lgrep!<Space>
" 
" 
" " Inspiration
" set colorcolumn=80
"
"
"noremap <F1> :execute "normal! i" . ( line("."))<cr>
"" noremap <F2> :execute !git blame % -L 10,10 --porcelain | sed -n -e 1,2p -e 10p | sed 's/author //' | sed 's/summary //' | sed -r '1 s|^(.{10}).*|\1|' | tr '\n' '\t'
"noremap <F2> :execute "!git blame % -L" . line(".") . "," . line(".") . " --porcelain <Bar> sed -n -e 1,2p -e 10p <Bar> sed 's/author //' <Bar> sed 's/summary //' <Bar> sed -r '1 s<Bar>^(.{10}).*<Bar>\\1<Bar>' <Bar> tr '\\n' '\\t'"<cr>
"
"
"function! GitBlameLine()
"    return system('git blame ' . expand('%') . ' -L ' . line('.') . ',' . line('.') . ' --porcelain | sed -n -e 1,2p -e 10p | sed "s/author //" | sed "s/summary //" | sed -r "1 s|^(.{10}).*|\1|" | tr "\n" "\t"')
"endfunction
"
"nnoremap <leader>gb <cmd>echom GitBlameLine()<cr>

function! GREP(args) abort
    let l:pattern = "."
    if len(a:args) > 0
       let l:pattern = a:args 
    endif
    let l:tmpfile = tempname()
    execute 'silent !rg --line-number ' .. l:pattern .. ' | fzf  --multi --preview "batcat --color=always {}" --preview-window=up > ' .. fnameescape(l:tmpfile)
    try
        execute 'cfile ' .. l:tmpfile
        redraw!
    finally
        call delete(l:tmpfile)
    endtry
endfunction

command! -nargs=* Grep call GREP(<q-args>)
nnoremap <leader>fg :Grep<cr>

function! FZF() abort
    let l:tempname = tempname()
    execute 'silent ! rg --files | fzf --multi --preview "batcat --color=always {}" --preview-window=up' . '| awk ''{ print $1":1:0" }'' > ' . fnameescape(l:tempname)
    try
        execute 'cfile ' . l:tempname
        redraw!
    finally
        call delete(l:tempname)
    endtry
endfunction

nnoremap <leader>ff :call FZF()<cr>

nnoremap <leader>w :qall!<cr>

vmap < <gv
vmap > >gv

set mp=go\ build\ %
set errorformat=./%f:%l:%m,%-G%.%#

function OpenQf()
	let l:qflist = getqflist()
    if len(l:qflist) > 1
        copen
    endif
endfunction

au QuickfixCmdPost make call OpenQf()

" Vundle config

set nocompatible              " be iMproved, required
filetype off     

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required

let g:tmux_navigator_no_mappings = 1
noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
noremap <silent> <c-p> :<C-U>TmuxNavigatePrevious<cr>



