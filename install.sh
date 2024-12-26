#!/bin/bash

# Función para mostrar mensajes con formato
echo_formatted() {
  echo -e "\033[1;34m$1\033[0m"
}

# Actualización del sistema
echo_formatted "[1/3] Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y

# Instalación de paquetes necesarios
echo_formatted "[2/3] Instalando paquetes requeridos..."
sudo apt install -y ntfs-3g curl wget

# Configuración de un servicio adicional (como Docker, OMV o similar)
echo_formatted "[3/3] Configurando servicio adicional..."
# Aquí puedes agregar tu lógica específica, por ejemplo, instalar Docker o cualquier otro paquete.
wget -O - https://get.docker.com | sudo bash

echo_formatted "Instalación completada. Reinicia tu sistema si es necesario."
