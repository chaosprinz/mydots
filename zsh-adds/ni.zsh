#!/usr/bin/env zsh

if [[ ! -o interactive ]]; then
    return
fi

compctl -K _ni ni

_ni() {
  local words completions
  read -cA words

  completions="$(ls ~/Projekte/builds/node_doc)"

  reply=("${(ps:\n:)completions}")
}
