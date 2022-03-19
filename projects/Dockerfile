# Stage 1: Compile and Build angular codebase

# Use official cypress image as the base image
FROM cypress/base:16.14.0-slim

WORKDIR /usr/src/app

# add `/app/node_modules/.bin` to $PATH
ENV PATH node_modules/.bin:$PATH

# install and cache app dependencies
COPY package*.json ./
COPY decorate-angular-cli.js ./

WORKDIR /usr/src/app/projects

# Install all the dependencies
# Angular system

# Generate the build of the application
# RUN ng serve --port 4201
 

# # Stage 2: Serve app with nginx server

# # Use official nginx image as the base image
# FROM nginx:latest

# # Copy the build output to replace the default nginx contents.
# COPY --from=builder /usr/local/app/dist/apps/simple-app /var/www
# COPY ./projects/nginx.conf /etc/nginx/nginx.conf

# # Expose port 4201
EXPOSE 4201

# ENTRYPOINT ["nginx","-g", "daemon off;"]