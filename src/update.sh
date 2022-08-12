update-aliases() {
    cd ~/.aliases
    git pull --rebase
    source ~/.aliases/source.sh
}