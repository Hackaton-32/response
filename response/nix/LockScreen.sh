#!/bin/bash

# Проверяем, установлен ли xdg-screensaver
if command -v xdg-screensaver &> /dev/null; then
    xdg-screensaver lock
elif command -v gnome-screensaver &> /dev/null; then
    gnome-screensaver-command -l
elif command -v xscreensaver &> /dev/null; then
    xscreensaver-command -lock
else
    echo "Не удалось найти подходящую программу для блокировки экрана."
    exit 1
fi

echo "Экран заблокирован."