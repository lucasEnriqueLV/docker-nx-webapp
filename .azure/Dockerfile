# Stage 1: Build
FROM node:12.7-alpine as build

WORKDIR /usr/src/app/
COPY ./../ /usr/src/app/
RUN npm install
RUN npm run build

FROM nginx:alpine
VOLUME /var/cache/nginx
COPY  ./../dist /usr/share/nginx/html
COPY ./../nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
