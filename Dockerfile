FROM ubuntu:14.04

# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

# Set the working directory
WORKDIR /app

# Copy the HTML files to the Nginx default directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
