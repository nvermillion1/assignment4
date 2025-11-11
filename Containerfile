FROM fedora:latest
RUN dnf install -y httpd tuxpaint vim \
    && dnf clean all
RUN touch /var/www/html/my-info.html \
    && echo "Assignment4" >> /var/www/html/my-info.html
EXPOSE 80
CMD apachectl -D FOREGROUND
