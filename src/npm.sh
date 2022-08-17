ni() {
    npm i $@
}

nid() {
    npm i -D $@
}

nu() {
    npm un $@
}

ns() {
    npm start
}

nrd() {
    nu $@
    nid $@
}

nis() {
    ni $@
    ns
}

nids() {
    nid $@
    ns
}

nrfi() {
    rm -rf ./node_modules
    ni
}

naf() {
    npm audit fix $@
}

nr() {
    npm run $@
}

nrd() {
    nr dev
}