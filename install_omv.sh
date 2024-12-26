#!/bin/bash

# Función para mostrar mensajes con formato
echo_formatted() {
  echo -e "\033[1;34m$1\033[0m"
}

# Instalación de OpenMediaVault
echo_formatted "[1/3] Actualizando y preparando el sistema..."
sudo apt-get update
sudo apt-get upgrade -y
wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/preinstall | sudo bash

echo_formatted "[2/3] Instalando OpenMediaVault..."
wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install | sudo bash

echo_formatted "[3/3] Proceso de instalación completado. El sistema se reiniciará."
sudo reboot
