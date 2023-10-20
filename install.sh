#!/usr/bin/env bash

CONFIG_DIR="$HOME/.config/gitui"
INSTALL_DIR="$(pwd)/install/"

rm -rf $CONFIG_DIR
rm -rf $INSTALL_DIR
mkdir -p $INSTALL_DIR
cp "$(pwd)/theme/"* $INSTALL_DIR
cp "$(pwd)/keymap/"* $INSTALL_DIR

ln -s $INSTALL_DIR $CONFIG_DIR
