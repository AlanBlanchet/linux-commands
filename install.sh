#!/bin/bash

path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
echo "Aliases directory is $path"

mkdir -p ~/.aliases
echo "Moving aliases from $path to ~/.aliases"
shopt -s dotglob
mv -v -f $path/* ~/.aliases

sourceAliases="~/.aliases/source.sh"


echo "source $sourceAliases" >> ~/.bashrc

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install gum

source "$sourceAliases"