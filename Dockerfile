# Use the latest Nginx image 
FROM nginx:latest

# Maintainer information
LABEL maintainer="x.y@gmail.com"

# Set the working directory
WORKDIR /usr/share/nginx/html/

# Add the web content
ADD https://freewebsitetemplates.com/preview/rehabilitation-yoga /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
