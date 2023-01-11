gr() {
    git rebase $@
}

grft() {
    echo "Rebase on :"
    f=$(git branch | cut -c 3- | gum choose)
    for v in $(git branch | cut -c 3- | gum choose --no-limit)
    do
        gr $f $v
        CONFLICTS=$(git ls-files -u | wc -l)
        if [ "$CONFLICTS" -gt 0 ] ; then
            echo "There is a merge conflict with $v"
            git rebase --abort
        else
            if [ "$1" != "--no-push" ] || [ "$1" != "-n" ] ; then
                gpf
            fi
        fi
    done
}

grm() {
    if git show-ref --quiet refs/heads/master; then
        gr master
    elif git show-ref --quiet refs/heads/main; then
        gr main
    fi
}

gpt() {
    git pull --tags
}

gpr() {
    git pull --rebase
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