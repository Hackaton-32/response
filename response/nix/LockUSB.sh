#!/bin/bash

# Получаем список всех устройств ввода
devices=$(xinput list | grep -i 'keyboard|pointer' | awk '{print $2}' | sed 's/id=//')

# Отключаем каждое устройство
for device in $devices; do
    xinput disable $device
done

echo "Все клавиатуры и мыши отключены."