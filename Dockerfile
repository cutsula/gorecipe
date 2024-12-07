# Use official nginx image from the Docker Hub as the base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the content of the public folder into the nginx html directory
COPY ./public/ /usr/share/nginx/html/

# Copy other necessary files (if any) like src or config files
COPY ./src /usr/share/nginx/src
COPY ./package.json /usr/share/nginx/package.json
COPY ./README.md /usr/share/nginx/README.md

# Expose port 80 to access the app via the browser
EXPOSE 80

# Run the nginx server to serve your files
CMD ["nginx", "-g", "daemon off;"]
