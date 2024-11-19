# Чтобы делать какие-то действия на удалённых серверах,  
# например, установить и запустить приложение, которое написал разработчик,  
# первое, что нужно сделать — подключиться к ним.

# Делается это с помощью команды ssh:  
ssh your_name@ip_or_host_name

# Но чтобы подключиться к серверу, его надо для начала где-то взять.  
# Для этого вы должны арендовать сервер у любого понравившегося вам провайдера.  
# Обычно у некоторых крупных провайдеров есть бесплатные тарифы с маленькими серверами.  
# Вероятно, такой вы сможете найти в Yandex.Cloud или cloud.ru,  
# если таких тарифов нет, попробуйте поискать у других провайдеров,  
# или арендуйте самый маленький и дешёвый сервер — он будет необходим в дальнейшем для обучения.

# Выбирая первоначальные опции сервера, укажите, что надо предустановить Ubuntu.

# После того как сервер будет в вашем личном кабинете, вы сможете к нему подключиться.  
# Тут возможны два варианта:

# Логин + пароль:  
# Вам их предоставят либо в личном кабинете, либо вышлют на почту.  
# Логин, вероятно, будет root, а пароль — произвольным набором символов.  
ssh root@11.11.11.11  # Если логин не root — замените его на настоящий,  
                      # 11.11.11.11 поменяйте на ваш настоящий IP-адрес, который  
                      # у вас должен быть в личном кабинете.

# SSH-ключ:  
# В этом варианте, вероятно, перед самой арендой сервера, вас попросят  
# добавить SSH-ключ в личном кабинете. Для начала его нужно будет создать.  
cd  # Перейдите в домашнюю директорию.  
cd .ssh  # Перейдите в директорию .ssh, там принято хранить SSH-ключи.  
         # Примечание: эти две команды можно заменить одной: cd ~/.ssh.  
ssh-keygen -t rsa  # Эта команда генерирует пару SSH-ключей.  
                   # Когда в выводе попросят ввести имя, можете ввести произвольное имя.  
                   # Когда попросят ввести пароль, советую просто нажать Enter (подтверждается тоже через Enter).  
# У вас должны появиться два файла: your_name.pub и your_name (вместо your_name — название, которое вы задали).  
ls
ssh-add your_name  # Добавление ssh ключа в ssh-agent.
                   # Если команда выведит ошибку то,
                   # возможно вам нужно будет включить ssh-agent
                   # решение гуглиться очень быстро
cat your_name.pub  # Команда cat выводит содержимое файла.  
                   # Этот вывод и нужно будет передать облачному провайдеру.  
ssh root@11.11.11.11  # Далее как в секции "логин + пароль".