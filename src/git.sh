gr() {
    git rebase $@
}

grm() {
    if git show-ref --quiet refs/heads/master; then
        gr master
    fi
    if git show-ref --quiet refs/heads/main; then
        gr main
    fi
}

gpt() {
    git pull --tags
}

gpr() {
    git pull --rebase
}

gf() {
    git fetch $@
}

gfp() {
    gf --prune
}

gp() {
    git push $@
}

gpf() {
    gp -f
}

gc() {
    git commit $@
}

gca() {
    gc --amend $@
}

gcan() {
    gca --no-edit
}

gaacanp() {
    gaa
    gcan
    gpf
}

gcapf() {
    gca
    gpf
}

gcp() {
    gc
    gp
}

ga() {
    git add $@
}

gaa() {
    ga .
}

gaac() {
    gaa && gc
}

gaacp() {
    gaac && gp
}

gr() {
    git rebase $@
}

grc() {
    gr --continue
}

grs() {
    gr --skip
}

gf() {
    git fetch $@
}

gfp() {
    gf --prune
}

grmp() {
    grm && gpf
}