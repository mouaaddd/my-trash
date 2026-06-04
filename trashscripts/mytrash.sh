#!/bin/bash
papelera=~/Documentos/doc_clase/sistemas/Bash/trash/trashscripts/papelera/
contar=$(ls -1 $papelera | wc -l)
tamano=$(du -sh "$papelera" | cut -f1)
contador=1
source ./trashfunctions.sh

cat << EOF
Bienvenido a MyTrash, actualmente tu papelera contiene $contar elementos ($tamano)
¡ATENCIÓN! Esta papelera se vacía automáticamente el día 28 de cada mes.
En que te puedo ayudar:
1. Listar los archivos eliminados
2. Información sobre un archivo eliminado
3. Restaurar un archivo
4. Restaurar por extensión
5. Vaciar la papelera ahora
6. Vaciar sólo los más antiguos
7. Salir de MyTrash
Que quieres hacer [1-7]:
EOF



while [ $contador -eq 1 ]; do
    read opcion
    case $opcion in
        1)
            ex1
echo
contar=$(ls -1 $papelera | wc -l)
tamano=$(du -sh "$papelera" | cut -f1)
echo "tu papelera contiene $contar elementos ($tamano)"
echo
cat << EOF
¿Qué quieres hacer ahora?:
En que te puedo ayudar:
1. Listar los archivos eliminados
2. Información sobre un archivo eliminado
3. Restaurar un archivo
4. Restaurar por extensión
5. Vaciar la papelera ahora
6. Vaciar sólo los más antiguos
7. Salir de MyTrash
EOF
            ;;
        2)
            ex2
echo
contar=$(ls -1 $papelera | wc -l)
tamano=$(du -sh "$papelera" | cut -f1)
echo "tu papelera contiene $contar elementos ($tamano)"
echo
cat << EOF
¿Qué quieres hacer ahora?:
En que te puedo ayudar:
1. Listar los archivos eliminados
2. Información sobre un archivo eliminado
3. Restaurar un archivo
4. Restaurar por extensión
5. Vaciar la papelera ahora
6. Vaciar sólo los más antiguos
7. Salir de MyTrash
EOF
            ;;
        3)
            ex3
echo
contar=$(ls -1 $papelera | wc -l)
tamano=$(du -sh "$papelera" | cut -f1)
echo "tu papelera contiene $contar elementos ($tamano)"
echo
cat << EOF
¿Qué quieres hacer ahora?:
En que te puedo ayudar:
1. Listar los archivos eliminados
2. Información sobre un archivo eliminado
3. Restaurar un archivo
4. Restaurar por extensión
5. Vaciar la papelera ahora
6. Vaciar sólo los más antiguos
7. Salir de MyTrash
EOF
            ;;
        4)
            ex4
echo
contar=$(ls -1 $papelera | wc -l)
tamano=$(du -sh "$papelera" | cut -f1)
echo "tu papelera contiene $contar elementos ($tamano)"
echo
cat << EOF
¿Qué quieres hacer ahora?:
En que te puedo ayudar:
1. Listar los archivos eliminados
2. Información sobre un archivo eliminado
3. Restaurar un archivo
4. Restaurar por extensión
5. Vaciar la papelera ahora
6. Vaciar sólo los más antiguos
7. Salir de MyTrash
EOF
            ;;
        5)
            ex5
echo
contar=$(ls -1 $papelera | wc -l)
tamano=$(du -sh "$papelera" | cut -f1)
echo "tu papelera contiene $contar elementos ($tamano)"
echo
cat << EOF
¿Qué quieres hacer ahora?:
En que te puedo ayudar:
1. Listar los archivos eliminados
2. Información sobre un archivo eliminado
3. Restaurar un archivo
4. Restaurar por extensión
5. Vaciar la papelera ahora
6. Vaciar sólo los más antiguos
7. Salir de MyTrash
EOF
            ;;
        6)
            ex6
echo
contar=$(ls -1 $papelera | wc -l)
tamano=$(du -sh "$papelera" | cut -f1)
echo "tu papelera contiene $contar elementos ($tamano)"
echo
cat << EOF
¿Qué quieres hacer ahora?:
En que te puedo ayudar:
1. Listar los archivos eliminados
2. Información sobre un archivo eliminado
3. Restaurar un archivo
4. Restaurar por extensión
5. Vaciar la papelera ahora
6. Vaciar sólo los más antiguos
7. Salir de MyTrash
EOF
            ;;
        7)
            echo "saliendo de mytrash"
            contador=0
            ;;
    esac
done

    
    