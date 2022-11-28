cpt() {
	tar -cf - -C "$(dirname "$1")" "$(basename "$1")" > $2
}

cput() {
	tar -xf - -C $2 < $1
}