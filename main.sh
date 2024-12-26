#!/bin/bash

# Función para mostrar mensajes con formato
echo_formatted() {
  echo -e "\033[1;32m$1\033[0m"
}

# Descargar y ejecutar los scripts auxiliares
download_and_run() {
  script_name=$1
  echo_formatted "Descargando y ejecutando $script_name..."
  wget -q -O $script_name https://raw.githubusercontent.com/lalojimvel123/Linux-System-Scripts/main/$script_name
  chmod +x $script_name
  bash $script_name
  rm -f $script_name
}

# Función principal
main_menu() {
  while true; do
    echo_formatted "\nSelecciona una opción:"
    echo "1) Actualizar el sistema"
    echo "2) Montar discos externos"
    echo "3) Instalar OpenMediaVault (OMV)"
    echo "4) Salir"
    read -p "Opción: " option

    # Verificar si la entrada no está vacía
    if [ -z "$option" ]; then
      echo_formatted "No se ingresó ninguna opción. Inténtalo de nuevo."
      continue
    fi

    case $option in
      1)
        download_and_run "update_system.sh"
        ;;
      2)
        download_and_run "mount_disks.sh"
        ;;
      3)
        download_and_run "install_omv.sh"
        ;;
      4)
        echo_formatted "Saliendo del script. ¡Hasta luego!"
        exit 0
        ;;
      *)
        echo_formatted "Opción no válida, intenta de nuevo."
        ;;
    esac
  done
}

# Llamar al menú principal
main_menu
