pm() {
    python manage.py $@
}

pmr() {
    pm runserver
}

pmm() {
    pm migrate
}