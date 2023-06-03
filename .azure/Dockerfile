# Stage 1: Build
FROM node:alpine AS build
WORKDIR /usr/src/app
COPY package.json ./
COPY decorate-angular-cli.js ./
RUN npm install
COPY . ./
RUN npm run build
RUN echo ${PWD} && ls -lR

FROM nginx:alpine
VOLUME /var/cache/nginx
COPY --from=build /usr/src/app/dist/simple-app /usr/share/nginx/html

EXPOSE 80
