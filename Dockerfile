# Use NGINX as the base image
FROM nginx:latest

# Copy your application files into the NGINX server directory
COPY ./src /usr/share/nginx/html

# Expose port 80 for the NGINX server
EXPOSE 80
