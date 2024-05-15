# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY app/ /var/www/html/

# Grant permissions for the Apache documents root directory
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 to allow communication to/from server
EXPOSE 80




# docker build -t php-example-app .
# docker run -p 8080:80 php-example-app
# http://localhost:8080 