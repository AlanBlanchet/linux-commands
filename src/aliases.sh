aliases() {
    path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
    if [ $# -eq 0 ] || [ $# -gt 1 ]
    then
        cat "$path/aliases.txt"
        echo -e "\n"
    else
        if [ $1 == "-h" ] || [ $1 == "--help" ]; then
            cat "$path/aliases.txt"
            echo -e "\n"
        elif [ $1 == "-l" ] || [ $1 == "--list" ]; then
            echo -e "Aliases list\n"
            cat "$path/aliases-list.txt"
            echo -e "\n"
        elif [ $1 == "-u" ] || [ $1 == "--update" ]; then
            cd ~/.aliases
            git pull --rebase
            source ~/.aliases/source.sh
        else
            found=0
            for f in $(cat "$path/aliases-list.txt") ; do
                if [ $1 == $f ]; then
                    found=1
                    cat "$path/$1.txt"
                    echo -e "\n"
                fi
            done
            if [ $found -eq 0 ]; then
                echo "Alias not found '$1'"
            fi
        fi
    fi
}