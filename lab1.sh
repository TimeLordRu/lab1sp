#!/bin/bash

while true; do
    read -p "Введите имя файла: " filename

    if [ ! -f "$filename" ]; then
        echo "Ошибка: файл не существует" >&2
    else
        echo "Информация о файле:"
        echo "Имя файла: $(basename $filename)"
        echo "Тип файла: ${filename##*.}"
        echo "Размер файла: $(stat -c %s $filename) байт"
        echo "Владелец файла: $(stat -c %U $filename)"
        echo "Права доступа: $(stat -c %A $filename)"
        echo "Дата создания файла: $(stat -c %y $filename)"
    fi

    read -p "Хотите выполнить еще раз? (y/n): " choice
    if [ "$choice" != "y" ]; then
        exit 0
    fi
done

exit 1
