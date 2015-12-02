#!/usr/bin/env bash

cwd=$(readlink -f $(dirname "$0"))

ln -sf "$cwd/zshrc" "$HOME/.zshrc"
ln -sf "$cwd/dircolors" "$HOME/.dircolors"
