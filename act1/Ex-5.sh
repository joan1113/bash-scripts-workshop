#!/bin/bash

read -p 'Introduce file: ' file

# No sobreescribimos la variable con $1
if [[ ! -e $file ]]; then
    echo "The file '$file' doesn't exist :(" >&2
    exit 1
fi

# Verificamos si tiene permisos de acceso
if [[ -r $file || -w $file || -x $file ]]; then
    echo 'The file is accessible (read/write/execute)'
else
    echo 'The file has no read/write/execute permission'
fi

# Obtener el tipo de archivo
file_type=$(file -b "$file")

# Determinar si es texto o binario de forma más amplia
if [[ "$file_type" == *text* ]]; then
    type="text"
elif [[ "$file_type" == *executable* || "$file_type" == *binary* ]]; then
    type="binary"
else
    type="unknown"
fi

echo "File type: $type"

# Permisos detallados
[[ -r $file ]] && echo "Readable: Yes" || echo "Readable: No"
[[ -w $file ]] && echo "Writeable: Yes" || echo "Writeable: No"
[[ -x $file ]] && echo "Executable: Yes" || echo "Executable: No"

exit 0
