# базовый образ для фронтенда
FROM node:18-alpine

# копирование и установка зависимостей
WORKDIR /var/www/app

COPY app/package.json .

RUN yarn install

# сборка фронтенда
COPY app .

# запуск веб-сервера
CMD yarn dev --host