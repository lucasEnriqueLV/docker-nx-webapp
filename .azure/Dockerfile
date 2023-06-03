# Stage 1: Build
FROM node:12.7-alpine as build

WORKDIR /usr/src/app
COPY ./ /usr/src/app/
RUN npm install
RUN npm run build

FROM nginx:alpine
VOLUME /var/cache/nginx
COPY --from=build /usr/src/app/dist/simple-app /usr/share/nginx/html

EXPOSE 80
