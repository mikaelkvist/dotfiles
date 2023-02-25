# Fish, tmux, neovim setup checklist
Follow this checklist to setup tmux, fish and neovim for development in bash, python, c/c++.

## Shell
- [ ] z
    Autojump between directories
    ```{sh}
    wget https://github.com/rupa/z/archive/refs/tags/v1.11.tar.gz
    tar xvf v1.11.tar.gz
    sudo cp -r 
    ```
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
    - [ ]  Tmux plugin manager
        Installs and loads tmux plugins
        ```{sh}
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
        ```
    - [ ] tmux-resurrect
        Save and restore tmux environment
        ```{sh}
        git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
        (
        cd ~/.tmux/plugins/tmux-resurrect || exit 1;
        git checkout 6be2f34b5f06c8a6a23dc3dc835e69c132d58a18;
        )
        ```
    - [ ] tmux-continuum
        Continuous saving of tmux environment
        ```{sh}
        git clone https://github.com/tmux-plugins/tmux-continuum ~/.tmux/plugins/tmux-continuum
        (
        cd ~/.tmux/plugins/tmux-continuum || exit 1;
        git checkout 44e6be6222a062809d0377e2b05dded900dc260f;
        )
        ```
    - [ ] tmux-sensible
        Nice tmux options options.
        ```{sh}
        git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible
        (
        cd ~/.tmux/plugins/tmux-sensible || exit 1;
        git checkout  5d089e418efb1a00f47654014ed085deb3d0c878
        )
        ```
    - [ ] tmux-vim-navigator
        Instruction from tmux.nvim, used for navigation between tmu and neovim panes.
        ```{sh}
        git clone https://github.com/christoomey/vim-tmux-navigator ~/.tmux/plugins/vim-tmux-navigator
        (
        cd ~/.tmux/plugins/vim-tmux-navigator || exit 1;
        git checkout bd4c38be5b4882991494cf77c0601a55bc45eebf
        )
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
    git clone https://github.com/folke/lazy.nvim ~/.local/share/nvim/lazy/lazy.nvim
    ```
- [ ] neovim-session-manager
    ```{sh}
    git clone https://github.com/Shatur/neovim-session-manager ~/.local/share/nvim/lazy/neovim-session-manager
    ```
- [ ] telescope
    ```{sh}
    git clone https://github.com/nvim-telescope/telescope.nvim ~/.local/share/nvim/lazy/telescope.nvim
    ```
- [ ] tmux
    ```{sh}
    git clone https://github.com/aserowy/tmux.nvim ~/.local/share/nvim/lazy/tmux.nvim
    ```
- [ ] neo-tree
    ```{sh}
    git clone https://github.com/nvim-neo-tree/neo-tree.nvim ~/.local/share/nvim/lazy/neo-tree.nvim
    ```
- [ ] bufferline 
    ```{sh}
    git clone https://github.com/akinsho/bufferline.nvim ~/.local/share/nvim/lazy/bufferline.nvim
    ```
- [ ] lualine
    ```{sh}
    git clone https://github.com/nvim-lualine/lualine.nvim ~/.local/share/nvim/lazy/lualine.nvim
    ```
- [ ] Comment
    ```{sh}
    git clone https://github.com/numToStr/Comment.nvim ~/.local/share/nvim/lazy/Comment.nvim
    ```
- [ ] which-key
    ```{sh}
    git clone https://github.com/folke/which-key.nvim ~/.local/share/nvim/lazy/which-key.nvim
    ```
- [ ] nui
    ```{sh}
    git clone https://github.com/MunifTanjim/nui.nvim ~/.local/share/nvim/lazy/nui.nvim
    ```
- [ ] nvim-web-devicons
    ```{sh}
    git clone https://github.com/nvim-tree/nvim-web-devicons ~/.local/share/nvim/lazy/nvim-web-devicons
    ```
- [ ] plenary
    ```{sh}
    git clone https://github.com/nvim-lua/plenary.nvim ~/.local/share/nvim/lazy/plenary.nvim
    ```

### Neovim nice plugins
- [ ] telescope-ui-select
    ```{sh}
    git clone https://github.com/nvim-telescope/telescope-ui-select.nvim ~/.local/share/nvim/lazy/telescope-ui-select.nvim
    ```
- [ ] zen-mode
    ```{sh}
    git clone https://github.com/folke/zen-mode.nvim ~/.local/share/nvim/lazy/zen-mode.nvim
    ```
- [ ] indent-blankline
    ```{sh}
    git clone https://github.com/lukas-reineke/indent-blankline.nvim ~/.local/share/nvim/lazy/indent-blankline.nvim
    ```
- [ ] nvim-colorizer
    ```{sh}
    git clone https://github.com/norcalli/nvim-colorizer.lua ~/.local/share/nvim/lazy/nvim-colorizer.lua
    ```
- [ ] nvim-treesitter
    Tree sitter is used for syntax highlighting in Neovim
    - [ ] nvim plugin
        ```{sh}
        git clone https://github.com/nvim-treesitter/nvim-treesitter ~/.local/share/nvim/lazy/nvim-treesitter
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
    git clone https://github.com/MattesGroeger/vim-bookmarks ~/.local/share/nvim/lazy/vim-bookmarks
    ```
- [ ] telescope-vim-bookmarks
    ```{sh}
    git clone https://github.com/tom-anders/telescope-vim-bookmarks.nvim ~/.local/share/nvim/lazy/telescope-vim-bookmarks.nvim
    ```

### Neovim git plugins
- [ ] diffview
    ```{sh}
    git clone https://github.com/sindrets/diffview.nvim ~/.local/share/nvim/lazy/diffview.nvim
    ```
- [ ] git-blame
    ```{sh}
    git clone https://github.com/f-person/git-blame.nvim ~/.local/share/nvim/lazy/git-blame.nvim
    ```
- [ ] gitsigns
    ```{sh}
    git clone https://github.com/lewis6991/gitsigns.nvim ~/.local/share/nvim/lazy/gitsigns.nvim
    ```

### Neovim colorscheme plugins
- [ ] aurora
    ```{sh}
    git clone https://github.com/ray-x/aurora ~/.local/share/nvim/lazy/aurora
    ```
- [ ] gruvbox
    ```{sh}
    git clone https://github.com/ellisonleao/gruvbox.nvim ~/.local/share/nvim/lazy/gruvbox.nvim
    ```
- [ ] kanagawa
    ```{sh}
    git clone https://github.com/rebelot/kanagawa.nvim ~/.local/share/nvim/lazy/kanagawa.nvim
    ```
- [ ] melange
    ```{sh}
    git clone https://github.com/savq/melange-nvim ~/.local/share/nvim/lazy/melange
    ```
- [ ] molokai
    ```{sh}
    git clone https://github.com/tomasr/molokai ~/.local/share/nvim/lazy/molokai
    ```
- [ ] nightfox
    ```{sh}
    git clone https://github.com/EdenEast/nightfox.nvim ~/.local/share/nvim/lazy/nightfox.nvim
    ```
- [ ] nordic
    ```{sh}
    git clone https://github.com/AlexvZyl/nordic.nvim ~/.local/share/nvim/lazy/nordic.nvim
    ```
- [ ] onedark
    ```{sh}
    git clone https://github.com/joshdick/onedark.vim ~/.local/share/nvim/lazy/onedark.vim
    ```
- [ ] tokyonight
    ```{sh}
    git clone https://github.com/folke/tokyonight.nvim ~/.local/share/nvim/lazy/tokyonight.nvim
    ```

### Neovim completion plugins
- [ ] nvim-cmp
    ```{sh}
    git clone https://github.com/hrsh7th/nvim-cmp ~/.local/share/nvim/lazy/nvim-cmp
    ```
- [ ] cmp-buffer
    ```{sh}
    git clone https://github.com/hrsh7th/cmp-buffer ~/.local/share/nvim/lazy/cmp-buffer
    ```
- [ ] cmp-cmdline
    ```{sh}
    git clone https://github.com/hrsh7th/cmp-cmdline ~/.local/share/nvim/lazy/cmp-cmdline
    ```
- [ ] cmp-path
    ```{sh}
    git clone https://github.com/hrsh7th/cmp-path ~/.local/share/nvim/lazy/cmp-path
    ```
### Neovim snippets plugins
- [ ] Luasnip
    ```{sh}
    git clone https://github.com/L3MON4D3/Luasnip ~/.local/share/nvim/lazy/Luasnip
    ```
- [ ] cmp_luasnip
    ```{sh}
    git clone https://github.com/saadparwaiz1/cmp_luasnip ~/.local/share/nvim/lazy/cmp_luasnip
    ```

### Neovim tooling plugins
- [ ] mason 
    ```{sh}
    git clone https://github.com/williamboman/mason.nvim ~/.local/share/nvim/lazy/mason.nvim
    mkdir -p ~/.local/share/nvim/mason/bin/
    mkdir -p ~/.local/share/nvim/mason/packages/clangd
    ```
- [ ] mason-lspconfig
    ```{sh}
    git clone https://github.com/williamboman/mason-lspconfig.nvim ~/.local/share/nvim/lazy/mason-lspconfig.nvim
    ```
- [ ] mason-nvim-dap
    ```{sh}
    git clone https://github.com/jay-babu/mason-nvim-dap.nvim ~/.local/share/nvim/lazy/mason-nvim-dap.nvim
    ```
- [ ] neodev
    ```{sh}
    git clone https://github.com/folke/neodev.nvim ~/.local/share/nvim/lazy/neodev.nvim
    ```
- [ ] nvim-dap  
    -- FIX: lock to previous version
    ```{sh}
    git clone https://github.com/mfussenegger/nvim-dap ~/.local/share/nvim/lazy/nvim-dap
    ```
- [ ] nvim-dap-python
    ```{sh}
    git clone https://github.com/mfussenegger/nvim-dap-python ~/.local/share/nvim/lazy/nvim-dap-python
    ```
- [ ] nvim-dap-virtual-text
    ```{sh}
    git clone https://github.com/theHamsta/nvim-dap-virtual-text ~/.local/share/nvim/lazy/nvim-dap-virtual-text
    ```
- [ ] nvim-dap-ui
    ```{sh}
    git clone https://github.com/rcarriga/nvim-dap-ui ~/.local/share/nvim/lazy/nvim-dap-ui
    ```
- [ ] toggleterm
    ```{sh}
    git clone https://github.com/akinsho/toggleterm.nvim ~/.local/share/nvim/lazy/toggleterm.nvim
    ```
- [ ] nvim-lspconfig
    -- FIX: lua_ls instead of sumneko_lua
    ```{sh}
    git clone https://github.com/neovim/nvim-lspconfig ~/.local/share/nvim/lazy/nvim-lspconfig
    ```
- [ ] nvim-navic
    ```{sh}
    git clone https://github.com/SmiteshP/nvim-navic ~/.local/share/nvim/lazy/nvim-navic
    ```
- [ ] symbols-outline
    ```{sh}
    git clone https://github.com/simrat39/symbols-outline.nvim ~/.local/share/nvim/lazy/symbols-outline.nvim
    ```
- [ ] fidget
    ```{sh}
    git clone https://github.com/j-hui/fidget.nvim ~/.local/share/nvim/lazy/fidget.nvim
    ```
- [ ] lsp_signature
    ```{sh}
    git clone https://github.com/ray-x/lsp_signature.nvim ~/.local/share/nvim/lazy/lsp_signature.nvim
    ```
- [ ] cmp-nvim-lsp
    ```{sh}
    git clone https://github.com/hrsh7th/cmp-nvim-lsp ~/.local/share/nvim/lazy/cmp-nvim-lsp
    ```
- [ ] null-ls
    ```{sh}
    git clone https://github.com/jose-elias-alvarez/null-ls.nvim ~/.local/share/nvim/lazy/null-ls.nvim
    ```
- [ ] trouble
    ```{sh}
    git clone https://github.com/folke/trouble.nvim ~/.local/share/nvim/lazy/trouble.nvim
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
        git clone --depth 1 --branch v0.20.2 https://github.com/tree-sitter/tree-sitter-c.git
        mv tree-sitter-c ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] cpp grammar for tree-sitter
        ```{sh}
        git clone --depth 1 --branch v0.20.0 https://github.com/tree-sitter/tree-sitter-cpp.git
        mv tree-sitter-cpp ~/.local/share/nvim/nvim-treesitter/source
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
        git clone --depth 1 --branch v0.20.0 https://github.com/tree-sitter/tree-sitter-python.git
        mv tree-sitter-python ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] pip
    - [ ] python3-venv
    - [ ] flake8
    - [ ] mypy
    - [ ] pylint
    - [ ] pyright
        LSP server to navigate and find error in code
        ```{sh}
        npm pack pyright@1.1.294
        mkdir -p ~/.local/share/nvim/mason/packages/pyright
        tar zxf pyright-1.1.294.tgz
        cp -r package/* ~/.local/share/nvim/mason/packages/pyright/.
        ln -sf ~/.local/share/nvim/mason/packages/pyright/index.js ~/.local/share/nvim/mason/bin/pyright 
        ln -sf ~/.local/share/nvim/mason/packages/pyright/langserver.index.js ~/.local/share/nvim/mason/bin/pyright-langserver
        ```
    - [ ] debugpy
        debugger and debug adapter
        ```{sh}
        python3 -m pip download -v debugpy==1.6.6
        mkdir -p ~/.local/share/nvim/mason/packages/debugpy
        cp debugpy-1.6.6*.whl ~/.local/share/nvim/mason/packages/debugpy/.
        (
        cd ~/.local/share/nvim/mason/packages/debugpy || exit 1;
        python3 -m venv venv
        venv/bin/python -m pip install debugpy-1.6.6*.whl
        echo '#!/usr/bin/env bash' > ~/.local/share/nvim/mason/packages/debugpy/debugpy
        echo "exec \"/home/${USER}/.local/share/nvim/mason/packages/debugpy/venv/bin/python\" -m debugpy \"\$@\"" >> ~/.local/share/nvim/mason/packages/debugpy/debugpy
        chmod +x ~/.local/share/nvim/mason/packages/debugpy/debugpy
        echo '#!/usr/bin/env bash' > ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter
        echo "exec \"/home/${USER}/.local/share/nvim/mason/packages/debugpy/venv/bin/python\" -m debugpy.adapter \"\$@\"" >> ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter
        chmod +x ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter
        )
        ln -sf ~/.local/share/nvim/mason/packages/debugpy/debugpy ~/.local/share/nvim/mason/bin/debugpy 
        ln -sf ~/.local/share/nvim/mason/packages/debugpy/debugpy-adapter ~/.local/share/nvim/mason/bin/debugpy-adapter

        // debugpy need to be installed here aswell
        mkdir ~/.virtualenvs
        python3 -m venv ~/.virtualenvs/debugpy
        ~/.virtualenvs/debugpy/bin/python -m pip install <debugpy-wheel-file>;
        ```
- [ ] bash development
    - [ ] bash grammar for tree-sitter
        ```{sh}
        git clone --depth 1 --branch v0.19.0 https://github.com/tree-sitter/tree-sitter-bash.git
        mv tree-sitter-bash ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] shellcheck
    - [ ] bash-language-server
        LSP server to navigate and find error in code
        ```{sh}
        npm pack bash-language-server@4.7.0 --json
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
        echo '#!/usr/bin/env bash' > ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter
        echo "exec node \"/home/${USER}/.local/share/nvim/mason/packages/bash-debug-adapter/extension/out/bashDebug.js\" \"\$@\"" >> ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter
        chmod +x ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter
        ln -sf ~/.local/share/nvim/mason/packages/bash-debug-adapter/bash-debug-adapter ~/.local/share/nvim/mason/bin/bash-debug-adapter
        ```
- [ ] lua development
    - [ ] lua grammar for tree-sitter
        ```{sh}
        (
        git clone https://github.com/tjdevries/tree-sitter-lua;
        cd tree-sitter-lua || exit 1;
        git checkout 0e860f6;
        )
        mv tree-sitter-lua ~/.local/share/nvim/nvim-treesitter/source
        ```
    - [ ] luacheck
    - [ ] lua-language-server
        ```{sh}
        wget https://github.com/LuaLS/lua-language-server/releases/download/3.6.11/lua-language-server-3.6.11-linux-x64.tar.gz
        mkdir -p ~/.local/share/nvim/mason/packages/lua-language-server
        tar xvf lua-language-server*.tar.gz -C ~/.local/share/nvim/mason/packages/lua-language-server
        echo '#!/usr/bin/env bash' > ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server
        echo "exec \"/home/${USER}/.local/share/nvim/mason/packages/lua-language-server/bin/lua-language-server\" \"\$@\"" >> ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server
        chmod +x ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server
        ln -sf ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server ~/.local/share/nvim/mason/bin/lua-language-server
        ```

### Neovim restore plugins
- [ ] Restore Neovim plugins to lockfile
    ```{sh}
    nvim --headless "+Lazy! restore" +qa
    ```

## Font
- [ ] Font
    Font that works with Unicode symbols used in this neovim/tmux setup.
    ```{sh}
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
    unzip FiraCode.zip 'Fira*'
    sudo cp Fira* /usr/local/share/fonts
    ```

## Fish
- [ ] fish
    -- TODO: change fish to zsh
- [ ] fish plugins
    - [ ] oh my fish
        Plugin manager for fish.
        ```{sh}
        git clone https://github.com/oh-my-fish/oh-my-fish
        (
        cd oh-my-fish || exit 1;
        bin/install --offline --noninteractive --yes --path=~/.local/share/omf --config=~/.config/omf;
        )
        ```
    - [ ] z
        Integrated z for autojump in fish.
        ```{sh}
        git clone --depth 1 https://github.com/oh-my-fish/plugin-z  ~/.local/share/omf/pkg/z
        ```
    - [ ] agnoster
        Theme with vi-mode for fish.
        ```{sh}
        git clone https://github.com/oh-my-fish/theme-agnoster ~/.local/share/omf/themes/agnoster
        (
        cd ~/.local/share/omf/themes/agnoster || exit 1;
        git checkout d65fb7c884a7372127f03ee2b5d8d63485a8ce32
        )
        ```
    - [ ] fish grammer for tree-sitter
        ```{sh}
        (
        git clone https://github.com/ram02z/tree-sitter-fish;
        cd tree-sitter-fish || exit 1;
        git checkout f917690;
        )
        mv tree-sitter-fish ~/.local/share/nvim/nvim-treesitter/source
        ```
