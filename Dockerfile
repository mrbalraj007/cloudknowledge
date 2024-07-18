# Use the latest CentOS image
FROM centos:latest

# Maintainer information
MAINTAINER x.y@gmail.com

# Install necessary packages
RUN yum install -y httpd && \
    yum clean all

# Copy the HTML file to the web server directory
COPY index.htm /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start the Apache HTTP server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
