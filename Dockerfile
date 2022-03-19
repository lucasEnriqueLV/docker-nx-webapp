FROM cypress/base:16.14.0-slim

WORKDIR /usr/src/app/

COPY . .

RUN npm install -g @angular/cli@13.3.0
RUN npm install -g nx

EXPOSE 4201