#!/bin/bash
contador=1
ruta_trashlog=~/Documentos/doc_clase/sistemas/Bash/trash/trashlogs/trashlog.log
ruta_restuaracio=~/Documentos/doc_clase/sistemas/Bash/trash/trashlogs/restauració.log

while [ $contador -eq 1 ]; do
   echo "Escribe la ruta del archivo"
   read archivo
   if [ -f $archivo ]; then
       echo "Quieres borrarlo definitivamente o moverlo a la papelera (responde del para borrar definitivamente o p para papelera)"
       read opcio
       if [ $opcio = "del" ]; then
           rm $archivo
           echo "Eliminado correctamente"
           fecha=$(date +"%d/%m/%Y:%H.%M")
           echo "eliminación:$fecha:$archivo:$USER" >> $ruta_trashlog  
       elif [ $opcio = "p" ]; then
           mv $archivo papelera/
           fecha=$(date +"%d/%m/%Y:%H.%M")
           echo "archivo movido correctamente"
           echo "Reciclaje:$fecha:$archivo:$USER" >> $ruta_trashlog 
           name=$(basename $archivo)   
           echo ""$name" <-- "$archivo"" >> $ruta_restuaracio 
       else
           echo "No has escrito correctamente la opcion"
       fi
   else
       echo "El archivo indicado no existe"
   fi
   echo "desea salir del menu? responde con un si o no"
   read exit
   if [ $exit = "si" ]; then
       contador=2
   else
       contador=1
   fi
done
