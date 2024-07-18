# Use the latest version of nginx from the official repository
FROM nginx:latest

# Copy the static website files to the nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
