#!/bin/bash
#
# NOTE: not up to date
#
# Execute as users (not root)

# Apt
sudo apt-get update && sudo apt-get upgrade -y # INPUT password
sudo apt-get install -y curl git fish gcc ripgrep shellcheck make bear g++ gdb tmux

# Nodejs
wget https://nodejs.org/dist/v16.16.0/node-v16.16.0-linux-x64.tar.gz
tar zxvf node-v16.16.0-linux-x64.tar.gz
(
	cd node-v16.16.0-linux-x64 || exit 1;
	sudo cp -r bin/* /usr/local/bin;
	sudo cp -r include/* /usr/local/include;
	sudo cp -r lib/* /usr/local/lib;
	sudo cp -r share/* /usr/local/share;
)
rm -r node-v16.16.0-linux-x64*

# Tree-sitter
wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.20.7/tree-sitter-linux-x64.gz
gzip -d tree-sitter-linux-x64.gz
sudo mv tree-sitter-linux-x64 /usr/local/bin/tree-sitter

 #Python
(
	mkdir ~/.virtualenvs;
	cd ~/.virtualenvs || exit;
	sudo apt-get install -y python3-venv;
	python3 -m venv debugpy;
	debugpy/bin/python -m pip install debugpy;
	sudo apt-get install -y python3-pip;
	python3 -m pip install flake8 pylint mypy;
)

# Luarocks
sudo apt-get install -y luarocks
sudo luarocks install luacheck

# Neovim
wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.tar.gz
tar -zxvf nvim-linux64.tar.gz
sudo mv nvim-linux64/bin/* /usr/local/bin/
sudo mv nvim-linux64/lib/* /usr/local/lib/
sudo mv nvim-linux64/share/* /usr/local/share/
sudo rm nvim-linux64.tar.gz
sudo rm -rf nvim-linux64

git clone https://github.com/mikaelkvist/dotfiles.git
cp -r dotfiles/config/* ~/.config/.
cp -r dotfiles/tmux.conf ~/.tmux.conf
rm -rf dotfiles

git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable ~/.local/share/nvim/lazy/lazy.nvim

nvim --headless "+Lazy! restore" +qa
nvim --headless -c "MasonInstall clangd pyright bash-language-server bash-debug-adapter cpptools debugpy" -c "qall"
nvim --headless "+TSInstallSync c cpp python bash lua" +qa

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# https://github.com/tmux-plugins/tpm/issues/6
export TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugin/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# fish
git clone https://github.com/oh-my-fish/oh-my-fish;
(
	cd oh-my-fish || exit;
	bin/install --offline --noninteractive --yes --path=~/.local/share/omf --config=~/.config/omf;
	fish -c 'omf install bobthefish';
)
rm -rf oh-my-fish
sudo chsh --shell "$(which fish)" "$USER"

# font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
unzip FiraCode.zip 'Fira*'
sudo mv Fira* /usr/local/share/fonts

