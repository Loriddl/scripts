#!/bin/bash

#Ввод имени файла.
echo "Введите имя файла:"
read FileName

if [ -z "$FileName" ]; then
	echo "Имя файла не может быть пустым!"
	exit 1
fi

FOLDER="FolderForLesson"

#Создание папки по введенному пути
while true; do

#Ввод пути для создания файла.
printf "Введите путь для создания файла:"
read PathFolder

#Проверка существования пути.
if [ -e "$PathFolder" ]; then
	mkdir -p "$PathFolder/$FOLDER"
	touch "$PathFolder/$FOLDER/$FileName.txt"
	break
else
	printf "\nВведен несуществующий путь\n"
	continue
fi
done

printf "Файл по указаному пути успешно создан.\n"
printf "Введите текст, который будет записан в файл: "
read TextForFile
printf "%s" "$TextForFile" > "$PathFolder/$FOLDER/$FileName.txt"
printf "Ваш текст:  "
cat "$PathFolder/$FOLDER/$FileName.txt"
printf "\n "
