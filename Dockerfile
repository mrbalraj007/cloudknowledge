# Use the latest Nginx image
FROM nginx:latest

# Maintainer information
MAINTAINER x.y@gmail.com

# Copy the HTML file to the web server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
