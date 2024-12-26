#!/bin/bash

# Función para mostrar mensajes con formato
echo_formatted() {
  echo -e "\033[1;34m$1\033[0m"
}

# Actualización del sistema
echo_formatted "[1/2] Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y
echo_formatted "[2/2] Proceso de actualización completado."
