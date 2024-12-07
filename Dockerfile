# Gunakan image resmi nginx dari Docker Hub sebagai base image
FROM nginx:alpine

# Set direktori kerja di dalam container untuk NGINX
WORKDIR /usr/share/nginx/html

# Salin seluruh proyek ke dalam container
COPY . /usr/share/nginx/html

# Ekspose port 80 untuk mengakses aplikasi lewat browser
EXPOSE 80

# Jalankan nginx untuk melayani file
CMD ["nginx", "-g", "daemon off;"]
