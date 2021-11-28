# Какй образ используем в качестве обертки в контейнере
FROM centos:latest
# Создание рабочей папки в нутри контейнера
WORKDIR /app
# Копирование содержимого рабочей папки с файлами в контейнер
COPY . .
# Установка приложения в контейнер
RUN rpm -Uvh nginx-1.19.3-1.el8.ngx.x86_64.rpm
# Запуск службы nginx 
CMD ["nginx","-g","daemon off;"]
