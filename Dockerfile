# Stage 1: Compile and Build angular codebase

# Use official cypress image as the base image
FROM cypress/base:16.13.0

# Set the working directory
WORKDIR /usr/local/app

# Add the source code to app
COPY projects/package.json projects/package-lock.json ./
COPY projects/decorate-angular-cli.js ./
CMD ["chmod", "666", "/var/run/docker.sock"]

# Install all the dependencies
# Angular system
RUN npm install -g @angular/cli@13.3.0

COPY . .

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

USER node

# ENTRYPOINT ["nginx","-g", "daemon off;"]