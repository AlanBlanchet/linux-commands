sai() {
    sudo apt install $@
}

sar() {
    sudo apt remove $@
}

sar() {
    sar $@
    sai $@
}

saud() {
    sudo apt update
}

saug() {
    sudo apt upgrade
}

sac() {
    sudo apt clean
}

sav() {
    saud
    saug
    sac
}