#!/usr/bin/env fish

set -gx EDITOR vim

alias bat="batcat --paging=never --color=always --decorations=never"

direnv hook fish | source

