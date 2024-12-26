#!/bin/bash

# Función para mostrar mensajes con formato
echo_formatted() {
  echo -e "\033[1;32m$1\033[0m"
}

# Menú principal
while true; do
  echo_formatted "Selecciona una opción:"
  echo "1) Actualizar el sistema"
  echo "2) Montar discos externos"
  echo "3) Instalar OpenMediaVault (OMV)"
  echo "4) Salir"
  read -p "Opción: " option

  case $option in
    1)
      echo_formatted "Ejecutando actualización del sistema..."
      bash update_system.sh
      ;;
    2)
      echo_formatted "Ejecutando configuración de discos..."
      bash mount_disks.sh
      ;;
    3)
      echo_formatted "Ejecutando instalación de OpenMediaVault..."
      bash install_omv.sh
      ;;
    4)
      echo_formatted "Saliendo del script. ¡Hasta luego!"
      exit 0
      ;;
    *)
      echo "Opción no válida, intenta de nuevo."
      ;;
  esac
done
