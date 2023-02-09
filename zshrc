if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
	z
 )

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias vim=nvim
alias bat="batcat --pager=never"
alias gitt='git log --oneline --graph --decorate --all'

bindkey -- '^O' 'clear-screen'

export PATH=$PATH:~/tools/flutter/bin
export PATH=$PATH:~/tools/android-sdk/cmdline-tools/latest/bin
export PATH=$PATH:~/tools/android-sdk/emulator
export PATH=$PATH:/home/kuzan/.local/bin
export PATH=$PATH:/home/kuzan/.config/lsp/lua-language-server/bin
export DENO_INSTALL="/home/kuzan/.deno"
export PATH="$PATH:$DENO_INSTALL/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias luamake=/luamake
alias bat="batcat --paging=never"


export EDITOR=vim
