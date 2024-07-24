# Use the official PHP image as a parent image
FROM php:7.4-apache

# Copy the current directory contents into the container at /var/www/html/
COPY . /var/www/html/

# Make port 80 available to the world outside this container
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2-foreground"]

