# Base Image: Nginx ka lightweight version (Alpine) use kar rahe hain
FROM docker.io/library/nginx:alpine

# Hamari index.html file ko container ke default html folder me copy karna
COPY index.html /usr/share/nginx/html/index.html

# Documentation ke liye batana ki container port 80 use karega
EXPOSE 80
