#!/bin/bash

# Nombre base del teclado a buscar
KB_NAME="SINO WEALTH Gaming KB"

# Buscar el ID exacto del teclado (solo slave keyboard, ignora punteros y otros dispositivos)
KB_ID=$(xinput list --short \
    | grep -F "$KB_NAME" \
    | grep "slave  keyboard" \
    | grep -v "Consumer Control" \
    | grep -v "System Control" \
    | grep -v "Keyboard$" \
    | head -n1 \
    | grep -o 'id=[0-9]*' \
    | cut -d= -f2
)

if [ -n "$KB_ID" ]; then
    echo "Teclado encontrado: $KB_NAME con ID $KB_ID"
    setxkbmap -device "$KB_ID" latam -variant dvorak
else
    echo "No se encontró el teclado $KB_NAME"
fi
