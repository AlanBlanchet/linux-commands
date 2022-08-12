#!/bin/bash

path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
echo "Aliases directory is $path"

mkdir -p ~/.aliases
echo "Moving aliases from $path to ~/.aliases"
shopt -s dotglob
mv -v -f $path/* ~/.aliases

sourceAliases="~/.aliases/source.sh"


echo "source $sourceAliases" >> ~/.bashrc

source "$sourceAliases"