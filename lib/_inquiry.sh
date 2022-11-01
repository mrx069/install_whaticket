#!/bin/bash

get_mysql_root_password() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie das Standardkennwort für das System ein:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_root_password
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie den Namen der zu konfigurierenden Firma ein (Verwenden Sie Kleinbuchstaben):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie die maximale Anzahl von Verbindungen ein, die das Unternehmen ${instancia_add} registrieren kann:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie die maximale Anzahl an Teilnehmern ein, die das Unternehmen ${instancia_add} registrieren kann:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie die FRONTEND/PANEL-Domain für ${instancia_add} ein:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie die BACKEND/PANEL-Domain für ${instancia_add} ein:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie den FRONTEND-Port für ${instancía_add} ein; Ex: 3000 A 3999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}


get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie den BACKEND-Port für diese Instanz ein; Ex: 4000 A 4999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_redis_port() {
  
  print_banner
  printf "${WHITE} 💻 Geben Sie den REDIS-Port / MSG SCHEDULE für ${instancia_add} ein; Ex: 5000 A 5999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " redis_port
}


get_urls() {
  get_mysql_root_password
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_redis_port
}

software_update() {
  get_instancia_add
  frontend_update
  backend_update
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Willkommen beim Whaticket-Installationsprogramm. Wählen Sie unten Ihre nächste Aktion aus!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Installieren Sie Whaticket\n"
  printf "   [2] Aktualisieren Sie Whaticket\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update 
      exit
      ;;

    *) exit ;;
  esac
}


