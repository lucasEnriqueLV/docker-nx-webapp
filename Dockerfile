# Stage 1: Compile and Build angular codebase

# Use official node image as the base image
FROM node:current-alpine3.15

# Set the working directory
WORKDIR /usr/local/app

# Add the source code to app
COPY ./projects /usr/local/app/

# Install all the dependencies
RUN npm install

# Generate the build of the application
# RUN npm run build
 

# # Stage 2: Serve app with nginx server

# # Use official nginx image as the base image
# FROM nginx:latest

# # Copy the build output to replace the default nginx contents.
# COPY --from=builder /usr/local/app/dist/apps/simple-app /var/www
# COPY ./projects/nginx.conf /etc/nginx/nginx.conf

# # Expose port 4201
EXPOSE 4201

RUN npm start 

# ENTRYPOINT ["nginx","-g", "daemon off;"]