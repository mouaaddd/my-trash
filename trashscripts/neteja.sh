#!/bin/bash
papelera=~/trash/trashscripts/papelera
rutares=~/trash/trashlogs/restauració.log
ruta_trashlog=~/trash/trashlogs/trashlog.log
ruta_olds=~/trash/trashlogs/olds


fecha_backup=$(date +"%m%Y")

cp "$ruta_trashlog" "$ruta_olds/trashlog.old.$fecha_backup"

> "$ruta_trashlog"
> "$rutares"

rm -rf "$papelera"/*


echo "Limpieza automática del día 28 completada con éxito."