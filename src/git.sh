gr() {
    git rebase $@
}

grm() {
    gr master
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
    gc --amend
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