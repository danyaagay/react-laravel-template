FROM node:18-alpine

WORKDIR /var/www/app

COPY app/ /var/www/app

RUN yarn install

CMD yarn dev --host