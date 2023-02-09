FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update 
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:neovim-ppa/unstable
RUN apt-add-repository universe
RUN apt-get update 
RUN apt-get install -y neovim

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
	curl \
	git \
	fish \
	unzip \
	gzip \
	wget \
	tar \
	gcc \
	python3 \
	bash \
	ripgrep \
	cargo \
	shellcheck \
	make \
	bear \
	g++ \
	gdb

RUN apt-get install -y sudo

RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
RUN apt-get install -y nodejs build-essential

RUN npm install -g npm

RUN cargo install tree-sitter-cli
ENV PATH=$PATH:/root/.cargo/bin

WORKDIR /root
RUN sh -c "$(git clone https://github.com/mikaelkvist/dotfiles.git)"
RUN sh -c "$(cp -r dotfiles/config ~/.config)"
RUN sh -c "rm -rf dotfiles"

RUN sh -c "git clone https://github.com/oh-my-fish/oh-my-fish"
WORKDIR /root/oh-my-fish
RUN sh -c "bin/install --offline --noninteractive --yes --path=/root/.local/share/omf --config=/root/.config/omf"
RUN sh -c "fish -c 'omf install bobthefish'"

WORKDIR /root
RUN sh -c "rm -rf /root/oh-my-fish"

# Neovim plugin nvim-dap-python requires debugpy
RUN sh -c "mkdir .virtualenvs"
WORKDIR /root/.virtualenvs
RUN apt install -y python3.10-venv
RUN sh -c "python3 -m venv debugpy"
RUN sh -c "debugpy/bin/python -m pip install debugpy"

# Neovim plugins will be automatically installed on first launch
WORKDIR /root
RUN sh -c "git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable ~/.local/share/nvim/lazy/lazy.nvim"
RUN sh -c "$(nvim --headless "+Lazy! restore" +qa)"
RUN sh -c "$(nvim --headless "+MasonInstall clangd pyright bash-language-server bash-debug-adapter cpptools debugpy" +qa)"
RUN sh -c "$(nvim --headless "+TSInstallSync c cpp python bash lua" +qa)"

# Install external tools
RUN sh -c "apt-get install -y python3-pip"
RUN sh -c "python3 -m pip install flake8 pylint mypy"

WORKDIR /work
ENTRYPOINT [ "/usr/bin/fish" ]
#
