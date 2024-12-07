# Gunakan image resmi nginx dari Docker Hub sebagai base image
FROM nginx:alpine

# Set direktori kerja untuk menyimpan file aplikasi yang disalin
WORKDIR /usr/share/nginx/html

# Salin file dari folder public ke dalam folder html di nginx
COPY ./public /usr/share/nginx/html

# Ekspose port 80 untuk dapat mengakses aplikasi melalui browser
EXPOSE 80

# Jalankan nginx di foreground (tidak sebagai daemon)
CMD ["nginx", "-g", "daemon off;"]
