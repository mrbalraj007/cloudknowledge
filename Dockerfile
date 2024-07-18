FROM centos:latest
MAINTAINER x.y@gmail.com

# Install necessary packages and clean up
RUN yum update -y && \
    yum install -y httpd unzip && \
    yum clean all && \
    rm -rf /var/cache/yum

# Add and extract web content
ADD https://freewebsitetemplates.com/preview/rehabilitation-yoga/ /var/www/html/
WORKDIR /var/www/html
# Expose port and run Apache HTTP server
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
