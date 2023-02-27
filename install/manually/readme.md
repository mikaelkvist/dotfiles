# Tmux, neovim setup checklist
Follow this checklist to setup tmux and neovim for development in bash, python, c/c++.

This document might not use the latest version of programs and plugins, but at least something that works.

## Shell
- [ ] git
- [ ] ripgrep
- [ ] make

## Dotfiles
- [ ] Dotfiles
    ```{sh}
    git clone https://github.com/mikaelkvist/dotfiles
    sudo cp dotfiles/tmux.conf ~/.tmux.conf
    sudo cp -r dotfiles/config/* ~/.config/.
    sudo chown -R ${USER}:${USER} ~/.config
    ```

## Tmux
- [ ] tmux
- [ ] tmux plugins
    - [ ] create plugins directory
        ```{sh}
        mkdir -p ~/.tmux/plugins
        ```
    - [ ]  Tmux plugin manager
        Installs and loads tmux plugins
        ```{sh}
        wget https://github.com/tmux-plugins/tpm/archive/refs/tags/v3.1.0.tar.gz -O tpm-v3.1.0.tar.gz
        tar -zxf tpm-v3.1.0.tar.gz --one-top-level=tpm --strip-components 1 -C ~/.tmux/plugins
        ```
    - [ ] tmux-resurrect
        Save and restore tmux environment
        ```{sh}
        wget https://github.com/tmux-plugins/tmux-resurrect/archive/refs/tags/v4.0.0.tar.gz -O tmux-resurrect-v4.0.0.tar.gz
        tar -zxf tmux-resurrect-v4.0.0.tar.gz --one-top-level=tmux-resurrect --strip-components 1 -C ~/.tmux/plugins
        ```
    - [ ] tmux-continuum
        Continuous saving of tmux environment
        ```{sh}
        wget https://github.com/tmux-plugins/tmux-continuum/archive/refs/tags/v3.1.0.tar.gz -O tmux-continuum-v3.1.0.tar.gz
        tar -zxf tmux-continuum-v3.1.0.tar.gz --one-top-level=tmux-continuum --strip-components 1 -C ~/.tmux/plugins
        ```
    - [ ] tmux-sensible
        Nice tmux options options.
        ```{sh}
        wget https://github.com/tmux-plugins/tmux-sensible/archive/refs/tags/v3.0.0.tar.gz -O tmux-sensible-v3.0.0.tar.gz
        tar -zxf tmux-sensible-v3.0.0.tar.gz --one-top-level=tmux-sensible --strip-components 1 -C ~/.tmux/plugins
        ```

## Neovim
- [ ] neovim
    Some neovim plugins requires neovim >= 0.8.
    ```{sh}
    wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.tar.gz
    tar -zxvf nvim-linux64.tar.gz 
    sudo mv nvim-linux64/bin/* /usr/local/bin/
    sudo mv nvim-linux64/lib/* /usr/local/lib/
    sudo mv nvim-linux64/share/* /usr/local/share/
    sudo rm nvim-linux64.tar.gz
    sudo rm -rf nvim-linux64
    ```
### Neovim core plugins
- [ ] lazy
    ```{sh}
    wget https://github.com/folke/lazy.nvim/archive/refs/tags/v9.8.5.tar.gz -O lazy.nvim-v9.8.5.tar.gz
    tar -zxf lazy.nvim-v9.8.5.tar.gz --one-top-level=lazy.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] neovim-session-manager
    ```{sh}
    wget https://github.com/Shatur/neovim-session-manager/archive/e7a2cbf56b5fd3a223f2774b535499fc62eca6ef.tar.gz -O neovim-session-manager-e7a2cbf56b5fd3a223f2774b535499fc62eca6ef.tar.gz
    tar -zxf neovim-session-manager-e7a2cbf56b5fd3a223f2774b535499fc62eca6ef.tar.gz --one-top-level=neovim-session-manager --strip-components 1 -C ~/.local/share/nvim/lazy
.
    ```
- [ ] telescope
    ```{sh}
    wget https://github.com/nvim-telescope/telescope.nvim/archive/refs/tags/v0.1.1.tar.gz -O telescope.nvim-v0.1.1.tar.gz
    tar -zxf telescope.nvim-v0.1.1.tar.gz --one-top-level=telescope.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] tmux
    ```{sh}
    wget https://github.com/aserowy/tmux.nvim/archive/feafcf8f48c49c720ee64e745648d69d42cb9c5a.tar.gz -O tmux.nvim-feafcf8f48c49c720ee64e745648d69d42cb9c5a.tar.gz
    tar -zxf tmux.nvim-feafcf8f48c49c720ee64e745648d69d42cb9c5a.tar.gz --one-top-level=tmux.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] neo-tree
    ```{sh}
    wget https://github.com/nvim-neo-tree/neo-tree.nvim/archive/refs/tags/2.51.tar.gz -O neo-tree.nvim-2.51.tar.gz
    tar -zxf neo-tree.nvim-2.51.tar.gz --one-top-level=neo-tree.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] bufferline 
    ```{sh}
    wget https://github.com/akinsho/bufferline.nvim/archive/refs/tags/v3.3.0.tar.gz -O bufferline.nvim-v3.3.0.tar.gz
    tar -zxf bufferline.nvim-v3.3.0.tar.gz --one-top-level=bufferline.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] lualine
    ```{sh}
    wget https://github.com/nvim-lualine/lualine.nvim/archive/e99d733e0213ceb8f548ae6551b04ae32e590c80.tar.gz -O lualine.nvim-e99d733e0213ceb8f548ae6551b04ae32e590c80.tar.gz
    tar -zxf lualine.nvim-e99d733e0213ceb8f548ae6551b04ae32e590c80.tar.gz --one-top-level=lualine.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] Comment
    ```{sh}
    wget https://github.com/numToStr/Comment.nvim/archive/refs/tags/v0.7.0.tar.gz -O Comment.nvim-v0.7.0.tar.gz
    tar -zxf Comment.nvim-v0.7.0.tar.gz --one-top-level=Comment.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] which-key
    ```{sh}
    wget https://github.com/folke/which-key.nvim/archive/refs/tags/v1.1.1.tar.gz -O which-key.nvim-v1.1.1.tar.gz
    tar -zxf which-key.nvim-v1.1.1.tar.gz --one-top-level=which-key.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nui
    ```{sh}
    wget https://github.com/MunifTanjim/nui.nvim/archive/0dc148c6ec06577fcf06cbab3b7dac96d48ba6be.tar.gz -O nui.nvim-0dc148c6ec06577fcf06cbab3b7dac96d48ba6be.tar.gz
    tar -zxf nui.nvim-0dc148c6ec06577fcf06cbab3b7dac96d48ba6be.tar.gz --one-top-level=nui.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-web-devicons
    ```{sh}
    wget https://github.com/nvim-tree/nvim-web-devicons/archive/c2c2317f356c8b7da0252f5da758f71bb60bb6b2.tar.gz -O nvim-web-devicons-c2c2317f356c8b7da0252f5da758f71bb60bb6b2.tar.gz
    tar -zxf nvim-web-devicons-c2c2317f356c8b7da0252f5da758f71bb60bb6b2.tar.gz --one-top-level=nvim-web-devicons --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] plenary
    ```{sh}
    wget https://github.com/nvim-lua/plenary.nvim/archive/v0.1.3.tar.gz -O plenary.nvim-v0.1.3.tar.gz
    tar -zxf plenary.nvim-v0.1.3.tar.gz --one-top-level=plenary.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```

### Neovim nice plugins
- [ ] telescope-ui-select
    ```{sh}
    wget https://github.com/nvim-telescope/telescope-ui-select.nvim/archive/62ea5e58c7bbe191297b983a9e7e89420f581369.tar.gz -O telescope-ui-select.nvim-62ea5e58c7bbe191297b983a9e7e89420f581369.tar.gz
    tar -zxf telescope-ui-select.nvim-62ea5e58c7bbe191297b983a9e7e89420f581369.tar.gz --one-top-level=telescope-ui-select.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] zen-mode
    ```{sh}
    wget https://github.com/zen-mode.nvim/archive/refs/tags/v1.1.0.tar.gz -O zen-mode.nvim-v1.1.0.tar.gz
    tar -zxf zen-mode.nvim-v1.1.0.tar.gz --one-top-level=zen-mode.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] indent-blankline
    ```{sh}
    wget https://github.com/lukas-reineke/indent-blankline.nvim/archive/refs/tags/v2.20.4.tar.gz -O indent-blankline.nvim-v2.20.4.tar.gz
    tar -zxf indent-blankline.nvim-v2.20.4.tar.gz --one-top-level=indent-blankline.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-colorizer
    ```{sh}
    wget https://github.com/norcalli/nvim-colorizer.lua/archive/36c610a9717cc9ec426a07c8e6bf3b3abcb139d6.tar.gz -O nvim-colorizer.lua-36c610a9717cc9ec426a07c8e6bf3b3abcb139d6.tar.gz
    tar -zxf nvim-colorizer.lua-36c610a9717cc9ec426a07c8e6bf3b3abcb139d6.tar.gz --one-top-level=nvim-colorizer.lua --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-treesitter
    Tree sitter is used for syntax highlighting in Neovim
    - [ ] nvim plugin
        ```{sh}
        wget https://github.com/nvim-treesitter/nvim-treesitter/archive/refs/tags/v0.8.5.2.tar.gz -O nvim-treesitter-v0.8.5.2.tar.gz
        tar -zxf nvim-treesitter-v0.8.5.2.tar.gz --one-top-level=nvim-treesitter --strip-components 1 -C ~/.local/share/nvim/lazy
        mkdir -p ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] tree-sitter cli
        ```{sh}
        wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.20.7/tree-sitter-linux-x64.gz
        gzip -d tree-sitter-linux-x64.gz
        chmod +x tree-sitter-linux-x64
        sudo mv tree-sitter-linux-x64 /usr/local/bin/tree-sitter
        ```
- [ ] vim-bookmarks
    ```{sh}
    wget https://github.com/MattesGroeger/vim-bookmarks/archive/9cc5fa7ecc23b052bd524d07c85356c64b92aeef.tar.gz -O vim-bookmarks-9cc5fa7ecc23b052bd524d07c85356c64b92aeef.tar.gz
    tar -zxf vim-bookmarks-9cc5fa7ecc23b052bd524d07c85356c64b92aeef.tar.gz --one-top-level=vim-bookmarks --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] telescope-vim-bookmarks
    ```{sh}
    wget https://github.com/tom-anders/telescope-vim-bookmarks.nvim/archive/92498cbf7c127dea37c3d27117b60dd7ab9baef4.tar.gz -O telescope-vim-bookmarks.nvim-92498cbf7c127dea37c3d27117b60dd7ab9baef4.tar.gz
    tar -zxf telescope-vim-bookmarks.nvim-92498cbf7c127dea37c3d27117b60dd7ab9baef4.tar.gz --one-top-level=telescope-vim-bookmarks --strip-components 1 -C ~/.local/share/nvim/lazy
    ```

### Neovim git plugins
- [ ] diffview
    ```{sh}
    wget https://github.com/sindrets/diffview.nvim/archive/009beb8054e510e7e2df122ee3ddb2b46bef542b.tar.gz -O diffview.nvim-009beb8054e510e7e2df122ee3ddb2b46bef542b.tar.gz
    tar -zxf diffview.nvim-009beb8054e510e7e2df122ee3ddb2b46bef542b.tar.gz --one-top-level=diffview.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] git-blame
    ```{sh}
    wget https://github.com/f-person/git-blame.nvim/archive/1ad47c6454a5a53d3f4ffdd4022e84f4a6e376cb.tar.gz -O git-blame.nvim-1ad47c6454a5a53d3f4ffdd4022e84f4a6e376cb.tar.gz
    tar -zxf git-blame.nvim-1ad47c6454a5a53d3f4ffdd4022e84f4a6e376cb.tar.gz --one-top-level=git-blame.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] gitsigns
    ```{sh}
    wget https://github.com/lewis6991/gitsigns.nvim/archive/refs/tags/v0.6.tar.gz -O gitsigns.nvim-v0.6.tar.gz
    tar -zxf gitsigns.nvim-v0.6.tar.gz --one-top-level=gitsigns.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```

### Neovim colorscheme plugins
- [ ] aurora
    ```{sh}
    wget https://github.com/ray-x/aurora/archive/7c1be58365428ef18c3621bacc5aaf188f8a4b9e.tar.gz -O aurora-7c1be58365428ef18c3621bacc5aaf188f8a4b9e.tar.gz
    tar -zxf aurora-7c1be58365428ef18c3621bacc5aaf188f8a4b9e.tar.gz --one-top-level=aurora --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] gruvbox
    ```{sh}
    wget https://github.com/ellisonleao/gruvbox.nvim/archive/3e31f9ab01fed42ebac75738c681daacb8c82bff.tar.gz -O gruvbox.nvim-3e31f9ab01fed42ebac75738c681daacb8c82bff.tar.gz
    tar -zxf gruvbox.nvim-3e31f9ab01fed42ebac75738c681daacb8c82bff.tar.gz --one-top-level=gruvbox.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] kanagawa
    ```{sh}
    wget https://github.com/rebelot/kanagawa.nvim/archive/4c8d48726621a7f3998c7ed35b2c2535abc22def.tar.gz -O kanagawa.nvim-4c8d48726621a7f3998c7ed35b2c2535abc22def.tar.gz
    tar -zxf kanagawa.nvim-4c8d48726621a7f3998c7ed35b2c2535abc22def.tar.gz --one-top-level=kanagawa.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] melange
    ```{sh}
    wget https://github.com/savq/melange-nvim/archive/refs/tags/2023-01-14.tar.gz -O melange-nvim-2023-01-14.tar.gz
    tar -zxf melange-nvim-2023-01-14.tar.gz --one-top-level=melange-nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] molokai
    ```{sh}
    wget https://github.com/tomasr/molokai/archive/c67bdfcdb31415aa0ade7f8c003261700a885476.tar.gz -O molokai-c67bdfcdb31415aa0ade7f8c003261700a885476.tar.gz
    tar -zxf molokai-c67bdfcdb31415aa0ade7f8c003261700a885476.tar.gz --one-top-level=molokai --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nightfox
    ```{sh}
    wget https://github.com/EdenEast/nightfox.nvim/archive/refs/tags/v.3.3.0.tar.gz -O nightfox.nvim-v3.3.0.tar.gz
    tar -zxf nightfox.nvim-v3.3.0.tar.gz --one-top-level=nightfox.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nordic
    ```{sh}
    wget https://github.com/AlexvZyl/nordic.nvim/archive/b4dbc727ec33f88d2b245967873a8c490037d01b.tar.gz -O nordic.nvim-b4dbc727ec33f88d2b245967873a8c490037d01b.tar.gz
    tar -zxf nordic.nvim-b4dbc727ec33f88d2b245967873a8c490037d01b.tar.gz --one-top-level=nordic.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] onedark
    ```{sh}
    wget https://github.com/joshdick/onedark.vim/archive/b6b5ffe31a195a3077338d7a506b905e4a51590f.tar.gz -O onedark.vim-b6b5ffe31a195a3077338d7a506b905e4a51590f.tar.gz
    tar -zxf onedark.vim-b6b5ffe31a195a3077338d7a506b905e4a51590f.tar.gz --one-top-level=onedark.vim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] tokyonight
    ```{sh}
    wget https://github.com/folke/tokyonight.nvim/archive/refs/tags/v1.4.0.tar.gz -O tokyonight.nvim-v1.4.0.tar.gz
    tar -zxf tokyonight.nvim-v1.4.0.tar.gz --one-top-level=tokyonight.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```

### Neovim completion plugins
- [ ] nvim-cmp
    ```{sh}
    wget https://github.com/hrsh7th/nvim-cmp/archive/01f697a68905f9dcae70960a9eb013695a17f9a2.tar.gz -O nvim-tmp-01f697a68905f9dcae70960a9eb013695a17f9a2.tar.gz
    tar -zxf nvim-cmp-01f697a68905f9dcae70960a9eb013695a17f9a2.tar.gz --one-top-level=nvim-cmp --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] cmp-buffer
    ```{sh}
    wget https://github.com/hrsh7th/cmp-buffer/archive/3022dbc9166796b644a841a02de8dd1cc1d311fa.tar.gz -O cmp-buffer-3022dbc9166796b644a841a02de8dd1cc1d311fa.tar.gz
    tar -zxf cmp-buffer-3022dbc9166796b644a841a02de8dd1cc1d311fa.tar.gz --one-top-level=cmp-buffer --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] cmp-cmdline
    ```{sh}
    wget https://github.com/hrsh7th/cmp-cmdline/archive/8fcc934a52af96120fe26358985c10c035984b53.tar.gz -O cmp-cmdline-8fcc934a52af96120fe26358985c10c035984b53.tar.gz
    tar -zxf cmp-cmdline-8fcc934a52af96120fe26358985c10c035984b53.tar.gz --one-top-level=cmp-cmdline --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] cmp-path
    ```{sh}
    wget https://github.com/hrsh7th/cmp-path/archive/91ff86cd9c29299a64f968ebb45846c485725f23.tar.gz -O cmp-path-91ff86cd9c29299a64f968ebb45846c485725f23.tar.gz
    tar -zxf cmp-path-91ff86cd9c29299a64f968ebb45846c485725f23.tar.gz --one-top-level=cmp-path --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
### Neovim snippets plugins
- [ ] Luasnip
    ```{sh}
    wget https://github.com/L3MON4D3/Luasnip/archive/refs/tags/v1.2.1.tar.gz -O Luasnip-v1.2.1.tar.gz
    tar -zxf Luasnip-v1.2.1.tar.gz --one-top-level=Luasnip --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] cmp_luasnip
    ```{sh}
    wget https://github.com/saadparwaiz1/cmp_luasnip/archive/18095520391186d634a0045dacaa346291096566.tar.gz -O cmp_luasnip-18095520391186d634a0045dacaa346291096566.tar.gz
    tar -zxf cmp_luasnip-18095520391186d634a0045dacaa346291096566.tar.gz --one-top-level=cmp_luasnip --strip-components 1 -C ~/.local/share/nvim/lazy
    ```

### Neovim tooling plugins
- [ ] mason 
    ```{sh}
    wget https://github.com/williamboman/mason.nvim/archive/1c23135467af667c61aef72a7c08b9a032c50a52.tar.gz -O mason.nvim-1c23135467af667c61aef72a7c08b9a032c50a52.tar.gz
    tar -zxf mason.nvim-1c23135467af667c61aef72a7c08b9a032c50a52.tar.gz --one-top-level=mason.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
 
    mkdir -p ~/.local/share/nvim/mason/bin
    mkdir -p ~/.local/share/nvim/mason/packages
    ```
- [ ] mason-lspconfig
    ```{sh}
    wget https://github.com/williamboman/mason-lspconfig.nvim/archive/3f9c0ea157e88b08e2d11ec65002eeb6e421f0da.tar.gz -O mason-lspconfig.nvim-3f9c0ea157e88b08e2d11ec65002eeb6e421f0da.tar.gz
    tar -zxf mason-lspconfig.nvim-3f9c0ea157e88b08e2d11ec65002eeb6e421f0da.tar.gz --one-top-level=mason-lspconfig.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] mason-nvim-dap
    ```{sh}
    wget https://github.com/jay-babu/mason-nvim-dap.nvim/archive/refs/tags/v1.2.0.tar.gz -O mason-nvim-dap.nvim-v1.2.0.tar.gz
    tar -zxf mason-nvim-dap.nvim-v1.2.0.tar.gz --one-top-level=mason-nvim-dap.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] neodev
    ```{sh}
    wget https://github.com/folke/neodev.nvim/archive/refs/tags/v2.4.0.tar.gz -O neodev.nvim-v2.4.0.tar.gz
    tar -zxf neodev.nvim-v2.4.0.tar.gz --one-top-level=neodev.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-dap  
    ```{sh}
    wget https://github.com/mfussenegger/nvim-dap/archive/refs/tags/0.5.0.tar.gz -O nvim-dap-0.5.0.tar.gz
    tar -zxf nvim-dap-0.5.0.tar.gz --one-top-level=nvim-dap --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-dap-python
    ```{sh}
    wget https://github.com/mfussenegger/nvim-dap-python/archive/65ccab83fb3d0b29ead6c765c1c52a1ed49592e8.tar.gz -O nvim-dap-python-65ccab83fb3d0b29ead6c765c1c52a1ed49592e8.tar.gz
    tar -zxf nvim-dap-python-65ccab83fb3d0b29ead6c765c1c52a1ed49592e8.tar.gz --one-top-level=nvim-dap-python --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-dap-virtual-text
    ```{sh}
    wget https://github.com/theHamsta/nvim-dap-virtual-text/archive/8db23ea51203b5f00ad107a0cef7e0b2d7a0476c.tar.gz -O nvim-dap-virtual-text-8db23ea51203b5f00ad107a0cef7e0b2d7a0476c.tar.gz
    tar -zxf nvim-dap-virtual-text-8db23ea51203b5f00ad107a0cef7e0b2d7a0476c.tar.gz --one-top-level=nvim-dap-virtual-text --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-dap-ui
    ```{sh}
    wget https://github.com/rcarriga/nvim-dap-ui/archive/refs/tags/v3.8.0.tar.gz -O nvim-dap-ui-v3.8.0.tar.gz
    tar -zxf nvim-dap-ui-v3.8.0.tar.gz --one-top-level=nvim-dap-ui --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] toggleterm
    ```{sh}
    wget https://github.com/akinsho/toggleterm.nvim/archive/refs/tags/2.4.0.tar.gz -O toggleterm.nvim-2.4.0.tar.gz
    tar -zxf toggleterm.nvim-2.4.0.tar.gz --one-top-level=toggleterm.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-lspconfig
    ```{sh}
    wget https://github.com/neovim/nvim-lspconfig/archive/3b08f2edc461314b9051edf26348f8af3fe33e63.tar.gz -O nvim-lspconfig-3b08f2edc461314b9051edf26348f8af3fe33e63.tar.gz
    tar -zxf nvim-lspconfig-3b08f2edc461314b9051edf26348f8af3fe33e63.tar.gz --one-top-level=nvim-lspconfig --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] nvim-navic
    ```{sh}
    wget https://github.com/SmiteshP/nvim-navic/archive/7e9d2b2b601149fecdccd11b516acb721e571fe6.tar.gz -O nvim-navic-7e9d2b2b601149fecdccd11b516acb721e571fe6.tar.gz
    tar -zxf nvim-navic-7e9d2b2b601149fecdccd11b516acb721e571fe6.tar.gz --one-top-level=nvim-navic --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] symbols-outline
    ```{sh}
    wget https://github.com/simrat39/symbols-outline.nvim/archive/512791925d57a61c545bc303356e8a8f7869763c.tar.gz -O symbols-outline-512791925d57a61c545bc303356e8a8f7869763c.tar.gz
    tar -zxf symbols-outline-512791925d57a61c545bc303356e8a8f7869763c.tar.gz --one-top-level=symbols-outline --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] fidget
    ```{sh}
    wget https://github.com/j-hui/fidget.nvim/archive/688b4fec4517650e29c3e63cfbb6e498b3112ba1.tar.gz -O fidget.nvim-688b4fec4517650e29c3e63cfbb6e498b3112ba1.tar.gz
    tar -zxf fidget.nvim-688b4fec4517650e29c3e63cfbb6e498b3112ba1.tar.gz --one-top-level=fidget.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] lsp_signature
    ```{sh}
    wget https://github.com/ray-x/lsp_signature.nvim/archive/6f6252f63b0baf0f2224c4caea33819a27f3f550.tar.gz -O lsp_signature.nvim-6f6252f63b0baf0f2224c4caea33819a27f3f550.tar.gz
    tar -zxf lsp_signature.nvim-6f6252f63b0baf0f2224c4caea33819a27f3f550.tar.gz --one-top-level=lsp_signature.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] cmp-nvim-lsp
    ```{sh}
    wget https://github.com/hrsh7th/cmp-nvim-lsp/archive/0e6b2ed705ddcff9738ec4ea838141654f12eeef.tar.gz -O cmp-nvim-lsp-0e6b2ed705ddcff9738ec4ea838141654f12eeef.tar.gz
    tar -zxf cmp-nvim-lsp-0e6b2ed705ddcff9738ec4ea838141654f12eeef.tar.gz --one-top-level=cmp-nvim-lsp --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] null-ls
    ```{sh}
    wget https://github.com/jose-elias-alvarez/null-ls.nvim/archive/689cdd78f70af20a37b5309ebc287ac645ae4f76.tar.gz -O null-ls.nvim-689cdd78f70af20a37b5309ebc287ac645ae4f76.tar.gz
    tar -zxf null-ls.nvim-689cdd78f70af20a37b5309ebc287ac645ae4f76.tar.gz --one-top-level=null-ls.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```
- [ ] trouble
    ```{sh}
    wget https://github.com/folke/trouble.nvim/archive/refs/tags/v2.2.0.tar.gz -O trouble.nvim-v2.2.0.tar.gz
    tar -zxf trouble.nvim-v2.2.0.tar.gz --one-top-level=trouble.nvim --strip-components 1 -C ~/.local/share/nvim/lazy
    ```

#### Neovim tooling dependencies
- [ ] general development
    - [ ] node
        Node is used for running background tasks, such as LSP servers in neovim.
        Node 16 is required.
        ```{sh}
        wget https://nodejs.org/dist/v16.16.0/node-v16.16.0-linux-x64.tar.gz
        tar zxvf node-v16.16.0-linux-x64.tar.gz
        (
            cd node-v16.16.0-linux-x64 || exit 1;
            sudo cp -r bin/* /usr/local/bin;
            sudo cp -r include/* /usr/local/include;
            sudo cp -r lib/* /usr/local/lib;
            sudo cp -r share/* /usr/local/share;
        )
        ```
- [ ] c/c++ development
    - [ ] c grammar for tree-sitter
        ```{sh}
        wget https://github.com/tree-sitter/tree-sitter-c/archive/refs/tags/v0.20.2.tar.gz -O tree-sitter-c-v0.20.2.tar.gz
        tar -zxf tree-sitter-c-v0.20.2.tar.gz --one-top-level=tree-sitter-c --strip-components 1 -C ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] cpp grammar for tree-sitter
        ```{sh}
        wget https://github.com/tree-sitter/tree-sitter-cpp/archive/refs/tags/v0.20.0.tar.gz -O tree-sitter-cpp-v0.20.0.tar.gz
        tar -zxf tree-sitter-cpp-v0.20.0.tar.gz --one-top-level=tree-sitter-cpp --strip-components 1 -C ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] gcc
    - [ ] g++
    - [ ] bear
        create compile_command-file used in LSP servers
    - [ ] clangd
        LSP server to navigate and find error in code
        ```{sh}
        wget https://github.com/clangd/clangd/releases/download/15.0.6/clangd-linux-15.0.6.zip
        unzip clangd-linux-15.0.6.zip -d ~/.local/share/nvim/mason/packages/clangd/
        mv ~/.local/share/nvim/mason/packages/clangd/clangd* ~/.local/share/nvim/mason/packages/clangd/clangd
        ln -sf ~/.local/share/nvim/mason/packages/clangd/clangd/bin/clangd ~/.local/share/nvim/mason/bin/clangd
        ```
    - [ ] gdb
        debugger
    - [ ] cpptools
        debug adapter
        ```{sh}
        wget https://github.com/microsoft/vscode-cpptools/releases/download/v1.14.3/cpptools-linux.vsix
        unzip cpptools-linux.vsix -d ~/.local/share/nvim/mason/packages/cpptools
        chmod +x ~/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7
        ln -sf ~/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7 ~/.local/share/nvim/mason/bin/OpenDebugAD7
        ```
- [ ] python development
    - [ ] python grammar for tree-sitter
        ```{sh}
        wget https://github.com/tree-sitter/tree-sitter-python/archive/refs/tags/v0.20.0.tar.gz -O tree-sitter-python-v0.20.0.tar.gz
        tar -zxf tree-sitter-python-v0.20.0.tar.gz --one-top-level=tree-sitter-python --strip-components 1 -C ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] pip
    - [ ] python3-venv
    - [ ] flake8
    - [ ] mypy
    - [ ] pylint
    - [ ] pyright
        LSP server to navigate and find error in code
        ```{sh}
        wget https://registry.npmjs.org/pyright/-/pyright-1.1.296.tgz
        mkdir -p ~/.local/share/nvim/mason/packages/pyright
        tar -zxf pyright-1.1.296.tgz
        cp -r package/* ~/.local/share/nvim/mason/packages/pyright/.
        ln -sf ~/.local/share/nvim/mason/packages/pyright/index.js ~/.local/share/nvim/mason/bin/pyright 
        ln -sf ~/.local/share/nvim/mason/packages/pyright/langserver.index.js ~/.local/share/nvim/mason/bin/pyright-langserver
        ```
    - [ ] debugpy
        debugger and debug adapter
        ```{sh}
        wget https://files.pythonhosted.org/packages/1f/19/345c21f6b62acf556c39e4358a22b0ad868fecb462c1041c13513d229b33/debugpy-1.6.6-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl

        mkdir -p ~/.local/share/nvim/mason/packages/debugpy
        python3 -m venv ~/.local/share/nvim/mason/packages/debugpy/venv
        ~/.local/share/nvim/mason/packages/debugpy/venv/bin/python -m pip install debugpy-1.6.6*.whl

        cat <<EOF >> ~/.local/share/nvim/mason/packages/debugpy/debugpy
        #!/usr/bin/env bash

        exec "/home/${USER}/.local/share/nvim/mason/packages/debugpy/venv/bin/python" -m debugpy "\$@"
        EOF
        chmod +x ~/.local/share/nvim/mason/packages/debugpy/debugpy

        cat <<EOF >> ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter
        #!/usr/bin/env bash

        exec "/home/${USER}/.local/share/nvim/mason/packages/debugpy/venv/bin/python" -m debugpy.adapter "\$@"
        EOF
        chmod +x ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter
        ln -sf ~/.local/share/nvim/mason/packages/debugpy/debugpy ~/.local/share/nvim/mason/bin/debugpy 
        ln -sf ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter ~/.local/share/nvim/mason/bin/debugpy-adapter

        // debugpy need to be installed here aswell
        mkdir ~/.virtualenvs
        python3 -m venv ~/.virtualenvs/debugpy
        ~/.virtualenvs/debugpy/bin/python -m pip install debugpy-1.6.6*.whl
        ```
- [ ] bash development
    - [ ] bash grammar for tree-sitter
        ```{sh}
        wget https://github.com/tree-sitter/tree-sitter-bash/archive/refs/tags/v0.19.0.tar.gz -O tree-sitter-bash-v0.19.0.tar.gz
        tar -zxf tree-sitter-bash-v0.19.0.tar.gz --one-top-level=tree-sitter-bash --strip-components 1 -C   /.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] shellcheck
    - [ ] bash-language-server
        LSP server to navigate and find error in code
        ```{sh}
        wget https://registry.npmjs.org/bash-language-server/-/bash-language-server-4.7.0.tgz
        mkdir -p ~/.local/share/nvim/mason/packages/bash-language-server
        cp bash-language-server-4.7.0.tgz ~/.local/share/nvim/mason/packages/bash-language-server
        (
        cd ~/.local/share/nvim/mason/packages/bash-language-server || exit 1;
        npm init -y;
        npm install bash-language-server-4.7.0.tgz
        )
        ln -sf  ~/.local/share/nvim/mason/packages/bash-language-server/node_modules/.bin/bash-language-server ~/.local/share/nvim/mason/bin/bash-language-server
        ```
    - [ ] bash-debug
        debugger (bashdb) and debug adapter
        ```{sh}
        wget https://github.com/rogalmic/vscode-bash-debug/releases/download/untagged-438733f35feb8659d939/bash-debug-0.3.9.vsix
        unzip bash-debug-0.3.9.vsix -d ~/.local/share/nvim/mason/packages/bash-debug-adapter

        cat <<EOF >> ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter
        #!/usr/bin/env bash

        exec node "/home/${USER}/.local/share/nvim/mason/packages/bash-debug-adapter/extension/out/bashDebug.js" "\$@"
        EOF
        chmod +x ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter
        ln -sf ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter ~/.local/share/nvim/mason/bin/bash-debug-adapter
        ```
- [ ] lua development
    - [ ] lua grammar for tree-sitter
        ```{sh}
        wget https://github.com/tjdevries/tree-sitter-lua/archive/cf0869b9898a2fecb7520c07b2c7335c80538a78.tar.gz -O tree-sitter-lua-cf0869b9898a2fecb7520c07b2c7335c80538a78.tar.gz
        tar -zxf tree-sitter-lua-cf0869b9898a2fecb7520c07b2c7335c80538a78.tar.gz --one-top-level=tree-sitter-lua --strip-components 1 -C ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] luacheck
    - [ ] lua-language-server
        ```{sh}
        wget https://github.com/LuaLS/lua-language-server/releases/download/3.6.11/lua-language-server-3.6.11-linux-x64.tar.gz
        mkdir -p ~/.local/share/nvim/mason/packages/lua-language-server
        tar -xvf lua-language-server*.tar.gz -C ~/.local/share/nvim/mason/packages/lua-language-server
        cat <<EOF >> ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server
        #!/usr/bin/env bash

        exec "/home/${USER}/.local/share/nvim/mason/packages/lua-language-server/bin/lua-language-server" "\$@"
        EOF
        chmod +x ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server
        ln -sf ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server ~/.local/share/nvim/mason/bin/lua-language-server
        ```

## Font
- [ ] Font
    Font that works with Unicode symbols used in this neovim/tmux setup.
    ```{sh}
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
    unzip FiraCode.zip 'Fira*'
    sudo cp Fira* /usr/local/share/fonts
    ```