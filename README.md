# PHP Hello World Docker Setup

## Step-by-Step Guide

### Step 1: Install Docker
1. Update your existing list of packages: `sudo apt update`
2. Install prerequisites: `sudo apt install apt-transport-https ca-certificates curl software-properties-common`
3. Add Docker’s official GPG key: `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
4. Add Docker APT repository: `sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`
5. Update package database: `sudo apt update`
6. Install Docker: `sudo apt install docker-ce`
7. Verify Docker installation: `sudo systemctl status docker`

### Step 2: Clone the GitHub Repository
1. Install Git if not already installed: `sudo apt install git`
2. Clone the repository: `git clone https://github.com/silarhi/php-hello-world.git`

### Step 2.1: Create Dockerfile
1. Create a Dockerfile: `nano Dockerfile`
2. Add the following content:
   ```Dockerfile
   # Use the official PHP image as a parent image
   FROM php:7.4-apache

   # Copy the current directory contents into the container at /var/www/html/
   COPY . /var/www/html/
   THANK YOU

   # Make port 80 available to the world outside this container
   EXPOSE 80

   # Run Apache in the foreground
   CMD ["apache2-foreground"]

