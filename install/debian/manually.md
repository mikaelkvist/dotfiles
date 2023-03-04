# Tmux, neovim setup checklist
Follow this checklist to setup tmux and neovim for development in bash, python, c/c++.

This document might not use the latest version of programs and plugins, but at least something that works.

## Shell
- [ ] git
    ```{sh}
    sudo apt install -y git
    ```
- [ ] ripgrep
    ```{sh}
    sudo apt install -y ripgrep
    ```
- [ ] make
    ```{sh}
    sudo apt install -y make
    ```

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
    ```{sh}
    sudo apt install -y tmux
    ```
- [ ] tmux plugins
    - [ ] create plugins directory
        ```{sh}
        mkdir -p ~/.tmux/plugins
        ```
    - [ ]  Tmux plugin manager
        Installs and loads tmux plugins
        ```{sh}
        wget https://github.com/tmux-plugins/tpm/archive/refs/tags/v3.1.0.tar.gz -O tpm-v3.1.0.tar.gz
        mkdir -p ~/.tmux/plugins/tpm
        tar -zxf tpm-v3.1.0.tar.gz --strip-components 1 -C ~/.tmux/plugins/tpm
        ```
    - [ ] tmux-resurrect
        Save and restore tmux environment
        ```{sh}
        wget https://github.com/tmux-plugins/tmux-resurrect/archive/refs/tags/v4.0.0.tar.gz -O tmux-resurrect-v4.0.0.tar.gz
        mkdir -p ~/.tmux/plugins/tmux-resurrect
        tar -zxf tmux-resurrect-v4.0.0.tar.gz --strip-components 1 -C ~/.tmux/plugins/tmux-resurrect
        ```
    - [ ] tmux-continuum
        Continuous saving of tmux environment
        ```{sh}
        wget https://github.com/tmux-plugins/tmux-continuum/archive/refs/tags/v3.1.0.tar.gz -O tmux-continuum-v3.1.0.tar.gz
        mkdir -p ~/.tmux/plugins/tmux-continuum
        tar -zxf tmux-continuum-v3.1.0.tar.gz --strip-components 1 -C ~/.tmux/plugins/tmux-continuum
        ```
    - [ ] tmux-sensible
        Nice tmux options options.
        ```{sh}
        wget https://github.com/tmux-plugins/tmux-sensible/archive/refs/tags/v3.0.0.tar.gz -O tmux-sensible-v3.0.0.tar.gz
        mkdir -p ~/.tmux/plugins/tmux-sensible
        tar -zxf tmux-sensible-v3.0.0.tar.gz --strip-components 1 -C ~/.tmux/plugins/tmux-sensible
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
    Neovim plugin manager.
    ```{sh}
    wget https://github.com/folke/lazy.nvim/archive/refs/tags/v9.10.0.tar.gz -O lazy.nvim-v9.10.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/lazy.nvim
    tar -zxf lazy.nvim-v9.10.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/lazy.nvim
    ```
- [ ] neovim-session-manager
    Save and restore neovim sessions.
    ```{sh}
    wget https://github.com/Shatur/neovim-session-manager/archive/e7a2cbf56b5fd3a223f2774b535499fc62eca6ef.tar.gz -O neovim-session-manager-e7a2cbf56b5fd3a223f2774b535499fc62eca6ef.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/neovim-session-manager
    tar -zxf neovim-session-manager-e7a2cbf56b5fd3a223f2774b535499fc62eca6ef.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/neovim-session-manager
.
    ```
- [ ] telescope
    General finder/picker.
    ```{sh}
    wget https://github.com/nvim-telescope/telescope.nvim/archive/refs/tags/0.1.1.tar.gz -O telescope.nvim-0.1.1.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/telescope.nvim
    tar -zxf telescope.nvim-0.1.1.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/telescope.nvim
    ```
- [ ] tmux
    Integration with tmux.
    ```{sh}
    wget https://github.com/aserowy/tmux.nvim/archive/feafcf8f48c49c720ee64e745648d69d42cb9c5a.tar.gz -O tmux.nvim-feafcf8f48c49c720ee64e745648d69d42cb9c5a.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/tmux.nvim
    tar -zxf tmux.nvim-feafcf8f48c49c720ee64e745648d69d42cb9c5a.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/tmux.nvim
    ```
- [ ] neo-tree
    Directory tree explorer.
    ```{sh}
    wget https://github.com/nvim-neo-tree/neo-tree.nvim/archive/refs/tags/2.52.tar.gz -O neo-tree.nvim-2.52.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/neo-tree.nvim
    tar -zxf neo-tree.nvim-2.52.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/neo-tree.nvim
    ```
- [ ] bufferline 
    View buffers as tabs.
    ```{sh}
    wget https://github.com/akinsho/bufferline.nvim/archive/refs/tags/v3.5.0.tar.gz -O bufferline.nvim-v3.5.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/bufferline.nvim
    tar -zxf bufferline.nvim-v3.5.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/bufferline.nvim
    ```
- [ ] lualine
    Customizable status bar.
    ```{sh}
    wget https://github.com/nvim-lualine/lualine.nvim/archive/e99d733e0213ceb8f548ae6551b04ae32e590c80.tar.gz -O lualine.nvim-e99d733e0213ceb8f548ae6551b04ae32e590c80.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/lualine.nvim
    tar -zxf lualine.nvim-e99d733e0213ceb8f548ae6551b04ae32e590c80.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/lualine.nvim
    ```
- [ ] Comment
    Shortcut for toggle comments.
    ```{sh}
    wget https://github.com/numToStr/Comment.nvim/archive/refs/tags/v0.7.0.tar.gz -O Comment.nvim-v0.7.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/Comment.nvim
    tar -zxf Comment.nvim-v0.7.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/Comment.nvim
    ```
- [ ] which-key
    Show set keymaps.
    ```{sh}
    wget https://github.com/folke/which-key.nvim/archive/refs/tags/v1.2.0.tar.gz -O which-key.nvim-v1.2.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/which-key.nvim
    tar -zxf which-key.nvim-v1.2.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/which-key.nvim
    ```
- [ ] nui
    Neovim UI library used by e.g. neo-tree
    ```{sh}
    wget https://github.com/MunifTanjim/nui.nvim/archive/0dc148c6ec06577fcf06cbab3b7dac96d48ba6be.tar.gz -O nui.nvim-0dc148c6ec06577fcf06cbab3b7dac96d48ba6be.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nui.nvim
    tar -zxf nui.nvim-0dc148c6ec06577fcf06cbab3b7dac96d48ba6be.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nui.nvim
    ```
- [ ] nvim-web-devicons
    Nice icons, used by e.g. neo-tree.
    ```{sh}
    wget https://github.com/nvim-tree/nvim-web-devicons/archive/c2c2317f356c8b7da0252f5da758f71bb60bb6b2.tar.gz -O nvim-web-devicons-c2c2317f356c8b7da0252f5da758f71bb60bb6b2.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nvim-web-devicons
    tar -zxf nvim-web-devicons-c2c2317f356c8b7da0252f5da758f71bb60bb6b2.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nvim-web-devicons
    ```
- [ ] plenary
    Utility functions, used by e.g. telescope.
    ```{sh}
    wget https://github.com/nvim-lua/plenary.nvim/archive/v0.1.3.tar.gz -O plenary.nvim-v0.1.3.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/plenary.nvim
    tar -zxf plenary.nvim-v0.1.3.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/plenary.nvim
    ```

### Neovim nice plugins
- [ ] telescope-ui-select
    Perform normal selections in telescope UI.
    ```{sh}
    wget https://github.com/nvim-telescope/telescope-ui-select.nvim/archive/62ea5e58c7bbe191297b983a9e7e89420f581369.tar.gz -O telescope-ui-select.nvim-62ea5e58c7bbe191297b983a9e7e89420f581369.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/telescope-ui-select.nvim
    tar -zxf telescope-ui-select.nvim-62ea5e58c7bbe191297b983a9e7e89420f581369.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/telescope-ui-select.nvim
    ```
- [ ] zen-mode
    Hide everything but the code pane.
    ```{sh}
    wget https://github.com/folke/zen-mode.nvim/archive/refs/tags/v1.1.0.tar.gz -O zen-mode.nvim-v1.1.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/zen-mode.nvim
    tar -zxf zen-mode.nvim-v1.1.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/zen-mode.nvim
    ```
- [ ] indent-blankline
    Show indentations.
    ```{sh}
    wget https://github.com/lukas-reineke/indent-blankline.nvim/archive/refs/tags/v2.20.4.tar.gz -O indent-blankline.nvim-v2.20.4.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/indent-blankline.nvim
    tar -zxf indent-blankline.nvim-v2.20.4.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/indent-blankline.nvim
    ```
- [ ] nvim-colorizer
    Set color background for hex colors.
    ```{sh}
    wget https://github.com/norcalli/nvim-colorizer.lua/archive/36c610a9717cc9ec426a07c8e6bf3b3abcb139d6.tar.gz -O nvim-colorizer.lua-36c610a9717cc9ec426a07c8e6bf3b3abcb139d6.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nvim-colorizer.lua
    tar -zxf nvim-colorizer.lua-36c610a9717cc9ec426a07c8e6bf3b3abcb139d6.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nvim-colorizer.lua
    ```

### Neovim git plugins
- [ ] diffview
    ```{sh}
    wget https://github.com/sindrets/diffview.nvim/archive/009beb8054e510e7e2df122ee3ddb2b46bef542b.tar.gz -O diffview.nvim-009beb8054e510e7e2df122ee3ddb2b46bef542b.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/diffview.nvim
    tar -zxf diffview.nvim-009beb8054e510e7e2df122ee3ddb2b46bef542b.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/diffview.nvim
    ```
- [ ] git-blame
    ```{sh}
    wget https://github.com/f-person/git-blame.nvim/archive/1ad47c6454a5a53d3f4ffdd4022e84f4a6e376cb.tar.gz -O git-blame.nvim-1ad47c6454a5a53d3f4ffdd4022e84f4a6e376cb.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/git-blame.nvim
    tar -zxf git-blame.nvim-1ad47c6454a5a53d3f4ffdd4022e84f4a6e376cb.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/git-blame.nvim
    ```
- [ ] gitsigns
    ```{sh}
    wget https://github.com/lewis6991/gitsigns.nvim/archive/refs/tags/v0.6.tar.gz -O gitsigns.nvim-v0.6.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/gitsigns.nvim
    tar -zxf gitsigns.nvim-v0.6.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/gitsigns.nvim
    ```
### Neovim snippets plugins
- [ ] Luasnip
    ```{sh}
    wget https://github.com/L3MON4D3/Luasnip/archive/refs/tags/v1.2.1.tar.gz -O Luasnip-v1.2.1.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/Luasnip
    tar -zxf Luasnip-v1.2.1.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/Luasnip
    ```
- [ ] cmp_luasnip
    ```{sh}
    wget https://github.com/saadparwaiz1/cmp_luasnip/archive/18095520391186d634a0045dacaa346291096566.tar.gz -O cmp_luasnip-18095520391186d634a0045dacaa346291096566.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/cmp_luasnip
    tar -zxf cmp_luasnip-18095520391186d634a0045dacaa346291096566.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/cmp_luasnip
    ```

### Neovim colorscheme plugins
- [ ] gruvbox
    ```{sh}
    wget https://github.com/ellisonleao/gruvbox.nvim/archive/3e31f9ab01fed42ebac75738c681daacb8c82bff.tar.gz -O gruvbox.nvim-3e31f9ab01fed42ebac75738c681daacb8c82bff.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/gruvbox.nvim
    tar -zxf gruvbox.nvim-3e31f9ab01fed42ebac75738c681daacb8c82bff.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/gruvbox.nvim
    ```
- [ ] nordic
    ```{sh}
    wget https://github.com/AlexvZyl/nordic.nvim/archive/b4dbc727ec33f88d2b245967873a8c490037d01b.tar.gz -O nordic.nvim-b4dbc727ec33f88d2b245967873a8c490037d01b.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nordic.nvim
    tar -zxf nordic.nvim-b4dbc727ec33f88d2b245967873a8c490037d01b.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nordic.nvim
    ```
- [ ] aurora
    ```{sh}
    wget https://github.com/ray-x/aurora/archive/7c1be58365428ef18c3621bacc5aaf188f8a4b9e.tar.gz -O aurora-7c1be58365428ef18c3621bacc5aaf188f8a4b9e.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/aurora
    tar -zxf aurora-7c1be58365428ef18c3621bacc5aaf188f8a4b9e.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/aurora
    ```
- [ ] tokyonight
    ```{sh}
    wget https://github.com/folke/tokyonight.nvim/archive/refs/tags/v1.6.0.tar.gz -O tokyonight.nvim-v1.6.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/tokyonight.nvim
    tar -zxf tokyonight.nvim-v1.6.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/tokyonight.nvim
    ```

### Neovim completion plugins
- [ ] nvim-cmp
    ```{sh}
    wget https://github.com/hrsh7th/nvim-cmp/archive/01f697a68905f9dcae70960a9eb013695a17f9a2.tar.gz -O nvim-cmp-01f697a68905f9dcae70960a9eb013695a17f9a2.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nvim-cmp
    tar -zxf nvim-cmp-01f697a68905f9dcae70960a9eb013695a17f9a2.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nvim-cmp
    ```
- [ ] cmp-buffer
    ```{sh}
    wget https://github.com/hrsh7th/cmp-buffer/archive/3022dbc9166796b644a841a02de8dd1cc1d311fa.tar.gz -O cmp-buffer-3022dbc9166796b644a841a02de8dd1cc1d311fa.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/cmp-buffer
    tar -zxf cmp-buffer-3022dbc9166796b644a841a02de8dd1cc1d311fa.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/cmp-buffer
    ```
- [ ] cmp-cmdline
    ```{sh}
    wget https://github.com/hrsh7th/cmp-cmdline/archive/8fcc934a52af96120fe26358985c10c035984b53.tar.gz -O cmp-cmdline-8fcc934a52af96120fe26358985c10c035984b53.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/cmp-cmdline
    tar -zxf cmp-cmdline-8fcc934a52af96120fe26358985c10c035984b53.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/cmp-cmdline
    ```
- [ ] cmp-path
    ```{sh}
    wget https://github.com/hrsh7th/cmp-path/archive/91ff86cd9c29299a64f968ebb45846c485725f23.tar.gz -O cmp-path-91ff86cd9c29299a64f968ebb45846c485725f23.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/cmp-path
    tar -zxf cmp-path-91ff86cd9c29299a64f968ebb45846c485725f23.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/cmp-path
    ```
- [ ] cmp-emoji
    ```{sh}
    wget https://github.com/hrsh7th/cmp-emoji/archive/19075c36d5820253d32e2478b6aaf3734aeaafa0.tar.gz -O cmp-path-19075c36d5820253d32e2478b6aaf3734aeaafa0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/cmp-emoji

    tar -zxf cmp-emoji-19075c36d5820253d32e2478b6aaf3734aeaafa0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/cmp-emoji
    ```

### Neovim tooling plugins
- [ ] mason 
    ```{sh}
    wget https://github.com/williamboman/mason.nvim/archive/1c23135467af667c61aef72a7c08b9a032c50a52.tar.gz -O mason.nvim-1c23135467af667c61aef72a7c08b9a032c50a52.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/mason.nvim
    tar -zxf mason.nvim-1c23135467af667c61aef72a7c08b9a032c50a52.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/mason.nvim
 
    mkdir -p ~/.local/share/nvim/mason/bin
    mkdir -p ~/.local/share/nvim/mason/packages
    ```
- [ ] mason-lspconfig
    ```{sh}
    wget https://github.com/williamboman/mason-lspconfig.nvim/archive/3f9c0ea157e88b08e2d11ec65002eeb6e421f0da.tar.gz -O mason-lspconfig.nvim-3f9c0ea157e88b08e2d11ec65002eeb6e421f0da.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/mason-lspconfig.nvim
    tar -zxf mason-lspconfig.nvim-3f9c0ea157e88b08e2d11ec65002eeb6e421f0da.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/mason-lspconfig.nvim
    ```
- [ ] mason-nvim-dap
    ```{sh}
    wget https://github.com/jay-babu/mason-nvim-dap.nvim/archive/refs/tags/v1.2.0.tar.gz -O mason-nvim-dap.nvim-v1.2.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/mason-nvim-dap.nvim
    tar -zxf mason-nvim-dap.nvim-v1.2.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/mason-nvim-dap.nvim
    ```
- [ ] neodev
    ```{sh}
    wget https://github.com/folke/neodev.nvim/archive/refs/tags/v2.4.1.tar.gz -O neodev.nvim-v2.4.1.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/neodev.nvim
    tar -zxf neodev.nvim-v2.4.1.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/neodev.nvim
    ```
- [ ] nvim-dap  
    ```{sh}
    wget https://github.com/mfussenegger/nvim-dap/archive/refs/tags/0.5.0.tar.gz -O nvim-dap-0.5.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nvim-dap
    tar -zxf nvim-dap-0.5.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nvim-dap
    ```
- [ ] nvim-dap-python
    ```{sh}
    wget https://github.com/mfussenegger/nvim-dap-python/archive/65ccab83fb3d0b29ead6c765c1c52a1ed49592e8.tar.gz -O nvim-dap-python-65ccab83fb3d0b29ead6c765c1c52a1ed49592e8.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nvim-dap-python
    tar -zxf nvim-dap-python-65ccab83fb3d0b29ead6c765c1c52a1ed49592e8.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nvim-dap-python
    ```
- [ ] nvim-dap-ui
    ```{sh}
    wget https://github.com/rcarriga/nvim-dap-ui/archive/refs/tags/v2.6.0.tar.gz -O nvim-dap-ui-v2.6.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nvim-dap-ui
    tar -zxf nvim-dap-ui-v2.6.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nvim-dap-ui
    ```
- [ ] toggleterm
    ```{sh}
    wget https://github.com/akinsho/toggleterm.nvim/archive/refs/tags/2.4.0.tar.gz -O toggleterm.nvim-2.4.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/toggleterm.nvim
    tar -zxf toggleterm.nvim-2.4.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/toggleterm.nvim
    ```
- [ ] nvim-lspconfig
    ```{sh}
    wget https://github.com/neovim/nvim-lspconfig/archive/3b08f2edc461314b9051edf26348f8af3fe33e63.tar.gz -O nvim-lspconfig-3b08f2edc461314b9051edf26348f8af3fe33e63.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nvim-lspconfig
    tar -zxf nvim-lspconfig-3b08f2edc461314b9051edf26348f8af3fe33e63.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nvim-lspconfig
    ```
- [ ] nvim-navic
    ```{sh}
    wget https://github.com/SmiteshP/nvim-navic/archive/7e9d2b2b601149fecdccd11b516acb721e571fe6.tar.gz -O nvim-navic-7e9d2b2b601149fecdccd11b516acb721e571fe6.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/nvim-navic
    tar -zxf nvim-navic-7e9d2b2b601149fecdccd11b516acb721e571fe6.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/nvim-navic
    ```
- [ ] symbols-outline
    ```{sh}
    wget https://github.com/simrat39/symbols-outline.nvim/archive/512791925d57a61c545bc303356e8a8f7869763c.tar.gz -O symbols-outline-512791925d57a61c545bc303356e8a8f7869763c.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/symbols-outline.nvim
    tar -zxf symbols-outline-512791925d57a61c545bc303356e8a8f7869763c.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/symbols-outline.nvim
    ```
- [ ] fidget
    ```{sh}
    wget https://github.com/j-hui/fidget.nvim/archive/688b4fec4517650e29c3e63cfbb6e498b3112ba1.tar.gz -O fidget.nvim-688b4fec4517650e29c3e63cfbb6e498b3112ba1.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/fidget.nvim
    tar -zxf fidget.nvim-688b4fec4517650e29c3e63cfbb6e498b3112ba1.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/fidget.nvim
    ```
- [ ] lsp_signature
    ```{sh}
    wget https://github.com/ray-x/lsp_signature.nvim/archive/6f6252f63b0baf0f2224c4caea33819a27f3f550.tar.gz -O lsp_signature.nvim-6f6252f63b0baf0f2224c4caea33819a27f3f550.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/lsp_signature.nvim
    tar -zxf lsp_signature.nvim-6f6252f63b0baf0f2224c4caea33819a27f3f550.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/lsp_signature.nvim
    ```
- [ ] cmp-nvim-lsp
    ```{sh}
    wget https://github.com/hrsh7th/cmp-nvim-lsp/archive/0e6b2ed705ddcff9738ec4ea838141654f12eeef.tar.gz -O cmp-nvim-lsp-0e6b2ed705ddcff9738ec4ea838141654f12eeef.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/cmp-nvim-lsp
    tar -zxf cmp-nvim-lsp-0e6b2ed705ddcff9738ec4ea838141654f12eeef.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/cmp-nvim-lsp
    ```
- [ ] null-ls
    ```{sh}
    wget https://github.com/jose-elias-alvarez/null-ls.nvim/archive/689cdd78f70af20a37b5309ebc287ac645ae4f76.tar.gz -O null-ls.nvim-689cdd78f70af20a37b5309ebc287ac645ae4f76.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/null-ls.nvim
    tar -zxf null-ls.nvim-689cdd78f70af20a37b5309ebc287ac645ae4f76.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/null-ls.nvim
    ```
- [ ] trouble
    ```{sh}
    wget https://github.com/folke/trouble.nvim/archive/refs/tags/v2.2.0.tar.gz -O trouble.nvim-v2.2.0.tar.gz
    mkdir -p ~/.local/share/nvim/lazy/trouble.nvim
    tar -zxf trouble.nvim-v2.2.0.tar.gz --strip-components 1 -C ~/.local/share/nvim/lazy/trouble.nvim
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
    - [ ] gcc
        ```{sh}
        sudo apt install -y gcc
        ```
    - [ ] g++
        ```{sh}
        sudo apt install -y g++
        ```
    - [ ] bear
        create compile_command-file used in LSP servers
        ```{sh}
        sudo apt install -y bear
        ```
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
        ```{sh}
        sudo apt install -y gdb
        ```
    - [ ] cpptools
        debug adapter
        ```{sh}
        wget https://github.com/microsoft/vscode-cpptools/releases/download/v1.14.3/cpptools-linux.vsix
        unzip cpptools-linux.vsix -d ~/.local/share/nvim/mason/packages/cpptools
        chmod +x ~/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7
        ln -sf ~/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7 ~/.local/share/nvim/mason/bin/OpenDebugAD7
        ```
- [ ] python development
    - [ ] pip
        ```{sh}
        sudo apt install -y pip
        ```
    - [ ] python3-venv
        ```{sh}
        sudo apt install -y python3-venv
        ```
    - [ ] flake8
        ```{sh}
        sudo apt install -y flake8
        ```
    - [ ] mypy
        ```{sh}
        sudo apt install -y mypy
        ```
    - [ ] pylint
        ```{sh}
        sudo apt install -y pylint
        ```
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
        wget https://files.pythonhosted.org/packages/f9/35/325e53d2a75b28777c28e790f84ea1ee45e1ecc00ae76550a53872a541f9/debugpy-1.6.6-py2.py3-none-any.whl

        mkdir -p ~/.local/share/nvim/mason/packages/debugpy
        python3 -m venv ~/.local/share/nvim/mason/packages/debugpy/venv
        ~/.local/share/nvim/mason/packages/debugpy/venv/bin/python -m pip install debugpy-1.6.6*.whl

        // without any space at the start of the lines
        cat <<EOF >> ~/.local/share/nvim/mason/packages/debugpy/debugpy
        #!/usr/bin/env bash

        exec "/home/${USER}/.local/share/nvim/mason/packages/debugpy/venv/bin/python" -m debugpy "\$@"
        EOF
        chmod +x ~/.local/share/nvim/mason/packages/debugpy/debugpy

        // without any space at the start of the lines
        cat <<EOF >> ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter
        #!/usr/bin/env bash

        exec "/home/${USER}/.local/share/nvim/mason/packages/debugpy/venv/bin/python" -m debugpy.adapter "\$@"
        EOF
        chmod +x ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter
        ln -sf ~/.local/share/nvim/mason/packages/debugpy/debugpy ~/.local/share/nvim/mason/bin/debugpy 
        ln -sf ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter ~/.local/share/nvim/mason/bin/debugpy-adapter
        ```
- [ ] bash development
    - [ ] shellcheck
        ```{sh}
        sudo apt install -y shellcheck
        ```
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
        rm bash-language-server-4.7.0.tgz
        )
        ln -sf  ~/.local/share/nvim/mason/packages/bash-language-server/node_modules/.bin/bash-language-server ~/.local/share/nvim/mason/bin/bash-language-server
        ```
    - [ ] bash-debug
        debugger (bashdb) and debug adapter
        ```{sh}
        wget https://github.com/rogalmic/vscode-bash-debug/releases/download/untagged-438733f35feb8659d939/bash-debug-0.3.9.vsix
        unzip bash-debug-0.3.9.vsix -d ~/.local/share/nvim/mason/packages/bash-debug-adapter

        // without any space at the start of the lines
        cat <<EOF >> ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter
        #!/usr/bin/env bash

        exec node "/home/${USER}/.local/share/nvim/mason/packages/bash-debug-adapter/extension/out/bashDebug.js" "\$@"
        EOF
        chmod +x ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter
        ln -sf ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter ~/.local/share/nvim/mason/bin/bash-debug-adapter
        ```
- [ ] lua development
    - [ ] luacheck
        ```{sh}
        sudo apt install -y luarocks
        sudo luarocks install luacheck
        ```
    - [ ] lua-language-server
        ```{sh}
        wget https://github.com/LuaLS/lua-language-server/releases/download/3.6.11/lua-language-server-3.6.11-linux-x64.tar.gz
        mkdir -p ~/.local/share/nvim/mason/packages/lua-language-server
        tar -xvf lua-language-server*.tar.gz -C ~/.local/share/nvim/mason/packages/lua-language-server
        
        // without any space at the start of the lines
        cat <<EOF >> ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server
        #!/usr/bin/env bash

        exec "/home/${USER}/.local/share/nvim/mason/packages/lua-language-server/bin/lua-language-server" "\$@"
        EOF
        chmod +x ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server
        ln -sf ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server ~/.local/share/nvim/mason/bin/lua-language-server
        ```

## Initialize empty git repos
The package manager for neovim (Lazy) does requires the directies under ~/.local/share/nvim/lazy/ to be git repos.
- [ ] Init git repos
    ```{sh}
    find ~/.local/share/nvim/lazy/ -maxdepth 1 -mindepth 1 type d -exec git init -q {} \;
    ```

## Font
- [ ] Font
    Font that works with Unicode symbols used in this neovim/tmux setup.
    ```{sh}
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
    unzip FiraCode.zip 'Fira*'
    sudo cp Fira* /usr/local/share/fonts
    ```
