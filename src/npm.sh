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

nrid() {
    nu $@
    nid $@
}

nrids() {
    nrid $@
    ns
}

nri() {
    nu $@
    ni $@
}

nris() {
    nri $@
    ns
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

np() {
    npm pack
}

nilp() {
    LIB=$(realpath $1)
    DIR="$(pwd)"
    cd $LIB
    nr lib
    np
    pName=$(cut -d "=" -f 2 <<< $(npm run env | grep "npm_package_name"))
    name=$(echo $pName | tr / - | tr -d @)
    version=$(cut -d "=" -f 2 <<< $(npm run env | grep "npm_package_version"))
    packName="$name-$version.tgz"
    cd $DIR
    rm -r node_modules/.cache/default-development
    ni -f "$LIB/$packName"
}

nilps() {
    nilp $1
    ns
}