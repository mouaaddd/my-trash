My Trash - Papelera de Reciclaje

Este proyecto implementa un sistema de gestión de borrado y reciclaje de archivos mediante scripts en Bash. Permite simular una papelera moviendo archivos a un directorio temporal, listar el contenido, restaurar elementos y realizar un mantenimiento automático de los registros.
Requisitos Previos

El sistema requiere ubicar el directorio trash en la ruta /home/tu_user/ (reemplazando tu_user por tu usuario real).

Estructura del Proyecto

El sistema está compuesto por tres scripts principales:

1. borra.sh
Intercepta la orden de borrado. En lugar de eliminar el archivo de inmediato, lo mueve a la papelera (~/trash/paperera/). Registra la ruta original en restauracio.log para permitir su recuperación y guarda un historial de la acción en trashlog.log.

3. mytrash.sh

Menú interactivo para gestionar la papelera con las siguientes 6 funciones:

    Listar archivos eliminados: Muestra los elementos que están en la papelera.

    Información de un archivo: Detalla los metadatos de un archivo específico.

    Restaurar un archivo: Devuelve un archivo a su ubicación original usando los registros.

    Restaurar por extensión: Recupera de golpe todos los archivos con la misma extensión (ej. .txt).

    Vaciar papelera ahora: Borra definitivamente todo el contenido de la papelera.

    Vaciar los más antiguos: Elimina permanentemente solo los archivos más viejos para liberar espacio.

3. netja.sh

Script diseñado para ejecutarse automáticamente en segundo plano. Limpia los archivos residuales temporales y realiza copias de seguridad de los registros antiguos en la carpeta olds, guardándolos con la fecha actual antes de vaciar los archivos de trazas principales.

Instrucciones de Uso

    Dar permisos de ejecución:
    chmod +x ~/trash/trashscripts/*.sh
