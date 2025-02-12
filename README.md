## 🔧 Установка и использование
Должен работать minikube
```bash
git clone https://github.com/magnoliAHAH/biocad-intern-tasks.git
cd biocad-intern-tasks
./start.sh
```
## 📌 Описание 
Для запуска используются реплики образа https://hub.docker.com/r/sos1ska/biocad-web \n
Присутствует автоматический запуск деплоя и сервиса, а также проброс портов (через start.sh) \n
После запуска сервис доступен по адресу <IP>:32777 \n
Скрипт автоматического запуска создаёт деплой и сервис, ожидает запуск подов, а затем пробрасывает порт. Имеет таймаут 120 секунд \n

## ✅ Успешный запуск

![image](https://github.com/user-attachments/assets/f03b47d4-0688-44f0-9ca0-98c63807d67d)


## 🛠️ Технологии
- Go
- Docker
- Minikube
- Bash

