FROM centos:latest
MAINTAINER x.y@gmail.com

# Install necessary packages and clean up
RUN yum update -y && \
    yum install -y httpd unzip && \
    yum clean all && \
    rm -rf /var/cache/yum

# Add and extract web content
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/drool.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip drool.zip && \
    cp -rvf drool-html/* . && \
    rm -rf drool-html drool.zip

# Expose port and run Apache HTTP server
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
