#!/bin/bash

# Función para mostrar mensajes con formato
echo_formatted() {
  echo -e "\033[1;34m$1\033[0m"
}

echo_formatted "[1/3] Instalando paquetes necesarios para NTFS..."
sudo apt install -y ntfs-3g

echo_formatted "[2/3] Detectando discos disponibles..."
disks=$(lsblk -dpno NAME,SIZE | grep -E "^/dev/sd")
if [ -z "$disks" ]; then
  echo "No se encontraron discos disponibles. Conecta un disco y vuelve a intentarlo."
  exit 1
fi

echo "Discos disponibles:"
echo "$disks"

echo "Selecciona el disco que deseas montar (por ejemplo, /dev/sda):"
read selected_disk

echo "Ingresa el nombre del punto de montaje (por ejemplo, /mnt/external):"
read mount_point
sudo mkdir -p "$mount_point"

echo_formatted "[3/3] Montando el disco..."
sudo mount -o defaults "$selected_disk" "$mount_point"
echo "El disco ha sido montado en $mount_point."
