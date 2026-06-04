#!/bin/bash
rutares=~/trash/trashlogs/restauració.log
papelera=~/trash/trashscripts/papelera/
ruta_trashlog=~/trash/trashlogs/trashlog.log


function ex1 {
    cat $rutares 
}

function ex2 {
    echo "escribe el nombre del fichero"
    read infofichero
    encontrado=0
    lspapelera=$(ls $papelera)
    for archivospap in $lspapelera; do
        if [ $infofichero == $archivospap ]; then
            file "$papelera$infofichero"
            encontrado=1
            break
        fi
    done

    if [ $encontrado -eq 0 ]; then
        echo "No se ha encontrado el archivo en la papelera"
    fi
        

}

function ex3 {
    echo "escribe el nombre del fichero"
    read ficherores
    encontrado=0
    lspapelera=$(ls $papelera)
    for archivospap in $lspapelera; do
        if [ "$ficherores" == "$archivospap" ]; then
            restaurar=$(grep "$ficherores" "$rutares" |awk '{print $3}')
            mv "$papelera$ficherores" $restaurar

            fecha=$(date +"%d/%m/%Y:%H.%M")
            echo "Restauració:$fecha:$restaurar:$USER" >> $ruta_trashlog 

            encontrado=1
            break
        fi
    done

    if [ $encontrado -eq 0 ]; then
        echo "No se ha encontrado el archivo en la papelera"
    fi
}

function ex4 {
    echo "escribe solamente la extension de los archivos que desea restaurar (txt, log, sh py ...)"
    read archsrest
    lspapelera=$(ls $papelera)
    for extpap in $lspapelera; do
        if [[ "$extpap" == *."$archsrest" ]]; then
            rutrest=$(grep $extpap "$rutares" | awk '{print $3}')
            basnam=$(basename $rutrest)
            mv "$papelera$basnam" "$rutrest"

            fecha=$(date +"%d/%m/%Y:%H.%M")
            echo "Restauración:$fecha:$rutrest:$USER" >> $ruta_trashlog 
        fi

    done
}


function ex5 {
    echo "quieres eliminar los archivos de la papelera? Responde si o no"
    read confirmacion
    if [ $confirmacion == "si" ]; then
        rm $papelera/* 
        echo "se han borrado todos los elementos de la papelera"

        fecha=$(date +"%d/%m/%Y:%H.%M")
        echo "Eliminación:$fecha:Todos_los_archivos_papelera:$USER" >> $ruta_trashlog 

    elif [ $confirmacion == "no" ]; then
        echo "no se han borrado los archivos"
    else 
        echo "no has escrito correctamente la respuesta (no se ha ejecutado nada)"
    fi
}

function ex6 {
    echo "escribe el numero de dias"
    read dia
    archivos=$(find $papelera -type f -ctime +$dia)

    for archivo in $archivos; do
        
        rm  "$archivo"

        fecha=$(date +"%d/%m/%Y:%H.%M")
        echo "Eliminación:$fecha:$archivo:$USER" >> $ruta_trashlog
    
    done
}