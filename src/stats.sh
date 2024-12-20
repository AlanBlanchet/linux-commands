stats() {
    uname -a
    lsb_release -a
}

stats_github() {
    echo "## My PC stats"
    # Uname
    echo ""
    echo '`uname -a` :'
    echo '```bash'
    uname -a
    echo '```'
    echo ""
    echo ""
    # Lsb release
    echo '`lsb_release -a` :'
    echo ""
    echo '```bash'
    lsb_release -a
    echo '```'
}