touch example-file.txt  # создаст пустой файл example-file.txt. Если файл уже существует, обновит данные о последнем взаимодействии с ним.
rm example-file.txt  # удаляет его.

mkdir directory-name  # создаст пустую директорию directory-name.
rm -rf directory-name  # полностью удалит директорию со всем её содержимым.

touch directory-name/example-name.txt  # создаст файл в директории directory-name.

# Скопирует файл example-name.txt из директории directory-name,
# назовёт его example-name2.txt и положит его также в directory-name.
cp directory-name/example-name.txt directory-name/example-name2.txt  

# Переместит файл example-name.txt из directory-name в текущую директорию (.).
mv directory-name/example-name.txt ./example-name.txt

# Переименует example-name.txt в super-file.txt.
mv ./example-name.txt ./super-file.txt  
# "./" указывается для явности текущей директории. Команда отработает точно так же, если их не ставить.
mv example-name.txt super-file.txt  