FROM centos:latest
LABEL maintainer="x.y@gmail.com"
RUN yum install -y httpd zip unzip && \
    curl -o /var/www/html/drool.zip https://www.free-css.com/assets/files/free-css-templates/download/page291/drool.zip && \
    cd /var/www/html && \
    unzip drool.zip && \
    cp -rvf drool-html/* . && \
    rm -rf drool-html drool.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
