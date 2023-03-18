#!/bin/bash
cd $1

directory_path=$1

# Отримання шляху до локального каталогу та віддаленого репозиторію
remote_repository=$2

# Ініціалізація локального репозиторію
git init 
# Додавання віддаленого репозиторію
git remote add origin $remote_repository

git branch -M main

# Додавання всіх файлів у локальний репозиторій
git add .

# Створення коміту
git commit -m "Initial commit"

# Оновлення віддаленого репозиторію
git push -u origin main

echo "Script complete"

