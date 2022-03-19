# Stage 1: Compile and Build angular codebase

# Use official cypress image as the base image
FROM cypress/base:16.14.0-slim

WORKDIR /usr/src/app/

# install and cache app dependencies
COPY package.json ./
COPY package-lock.json ./
COPY decorate-angular-cli.js ./

RUN npm install -g @angular/cli@13.3.0
RUN npm install -g nx

# # Stage 2: Serve app with nginx server

# # Use official nginx image as the base image
# FROM nginx:latest

# # Copy the build output to replace the default nginx contents.
# COPY --from=builder /usr/local/app/dist/apps/simple-app /var/www
# COPY ./projects/nginx.conf /etc/nginx/nginx.conf

# # Expose port 4201
EXPOSE 4201

# ENTRYPOINT ["nginx","-g", "daemon off;"]