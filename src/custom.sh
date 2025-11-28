cdapv() {
    cd ~/dev/apv11
    docker-compose -f docker-compose.local.yml --env-file .env.local up
    #conda activate apv11
    #python manage.py runserver
}

cdemb() {
    cd ~/dev/emb06_django
    conda activate emb06_django
    python manage.py runserver
}

vpn() {
    sudo tailscale up --accept-routes
}
