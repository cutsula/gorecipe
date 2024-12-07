# Gunakan image Nginx resmi dari Docker Hub sebagai base image
FROM nginx:alpine

# Salin file konfigurasi nginx yang telah dimodifikasi ke dalam container
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Salin seluruh project ke dalam direktori html di Nginx
COPY . /usr/share/nginx/html

# Expose port 80 agar dapat diakses dari luar container
EXPOSE 80

# Jalankan Nginx di background
CMD ["nginx", "-g", "daemon off;"]
