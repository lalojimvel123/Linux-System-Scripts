#!/bin/bash

# Función para mostrar mensajes con formato
echo_formatted() {
  echo -e "\033[1;32m$1\033[0m"
}

echo_formatted "\nMenu de ejecucion:"
PS3="Elige tu opción: "

opciones=("Actualizar el sistema" "Montar discos externos" "Instalar OpenMediaVault (OMV)" "salir")
select opt in "${opciones[@]}"
do
    case $opt in

        "Actualizar el sistema") echo "Has elegido Actualizar el sistema"
        ;;

        "Montar discos externos") echo "Has elegido Montar discos externos"
        ;;

        "Instalar OpenMediaVault (OMV)") echo "Has elegido Instalar OpenMediaVault (OMV) "
        ;;

        "salir") break 2
        ;;
        *) echo "Opcion no válida."
    esac
done
