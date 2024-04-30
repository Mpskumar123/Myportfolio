# Use an existing docker image as a base
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the local HTML file into the container at the working directory
COPY index.html .
COPY styles.css .

# Copy additional folders into the container
COPY Files /usr/share/nginx/html/Files
COPY certificates /usr/share/nginx/html/certificates
COPY images /usr/share/nginx/html/images

# Expose port 80
EXPOSE 80
