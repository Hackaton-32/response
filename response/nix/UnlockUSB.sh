#!/bin/bash

# Получаем список всех устройств ввода
devices=$(xinput list | grep -i 'keyboard|pointer' | awk '{print $2}' | sed 's/id=//')

# Включаем каждое устройство
for device in $devices; do
    xinput enable $device
done

echo "Все клавиатуры и мыши включены."
