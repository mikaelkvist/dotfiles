#!/usr/bin/env fish

set -gx EDITOR vim
set -gx TMUX_PLUGIN_MANAGER_PATH ~/.tmux/plugins

alias bat="batcat --paging=never --color=always --decorations=never"

direnv hook fish | source

