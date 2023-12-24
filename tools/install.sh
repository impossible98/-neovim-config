#!/usr/bin/env bash

function download() {
  git clone --branch master --depth 1 https://github.com/impossible98/neovim-config.git /tmp/neovim-config
}

function install() {
  mkdir -p ~/.config/nvim
  cp -r /tmp/neovim-config/templates/* ~/.config/nvim/
  rm -rf /tmp/neovim-config
}

function main() {
  download
  install
  echo "neovim config installed"
}

main
