#!/bin/bash

#Opciones de menu
1="ins1"
2="ins2"
3="ins3"
4="ins4"
5="ins5"

echo -e "Menu de instalacion"
echo -e ""


function menu_principal(){

PS3= "Selecciona tu operacion"
select menu in "$1" "$2" "$3" "$4" "$5";
do
case $menu in 
$1)
echo -e "ejecutando ins1"
read escribe
echo -e "Escribiste: $escribe"
slep 3
;;
$2)
echo -e "ejecutando ins2"
slep 3
;;
$3)
echo -e "ejecutando ins3"
slep 3
;;
$4)
echo -e "ejecutando ins4"
slep 3
;;
$5)
echo -e "ejecutando ins5"
slep 3
exit
;;
*)
echo -e "(*) $REPLY no es una opcion valida"
;;

esac
done
}
#fin menu principal
menu_principal # llama a la funcion

