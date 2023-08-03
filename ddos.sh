#!/bin/bash

# Fonction pour effacer la ligne courante dans le terminal
clear_line() {
    echo -e "\033[2K\r"
}

# Impression avec des couleurs
echo -e "\033[1;35m"
cat << "EOF"
██████╗ ██████╗  ██████╗ ███████╗    ██████╗ ██╗   ██╗    ███████╗ █████╗ ██████╗ ██████╗ ██╗
██╔══██╗██╔══██╗██╔═══██╗██╔════╝    ██╔══██╗╚██╗ ██╔╝    ██╔════╝██╔══██╗██╔══██╗██╔══██╗██║
██║  ██║██║  ██║██║   ██║███████╗    ██████╔╝ ╚████╔╝     ███████╗███████║██████╔╝██████╔╝██║
██║  ██║██║  ██║██║   ██║╚════██║    ██╔══██╗  ╚██╔╝      ╚════██║██╔══██║██╔══██╗██╔══██╗██║
██████╔╝██████╔╝╚██████╔╝███████║    ██████╔╝   ██║       ███████║██║  ██║██████╔╝██║  ██║██║
╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝    ╚═════╝    ╚═╝       ╚══════╝╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝
Author : james_bond_007__
EOF
echo -e "\033[0m"

# Demander l'adresse IP et le port
read -p "IP Target: " ip
read -p "Port: " port

# Attendre 7 secondes
sleep 7

sent=0
while true; do
    # Envoi des paquets
    echo -e "\033[1;35mSent $sent packet(s) through port: $port\033[0m"
    sent=$((sent + 1))
    port=$((port + 1))
    if [ "$port" -eq 65534 ]; then
        port=1
    fi
done
