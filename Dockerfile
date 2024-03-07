# Use Ubuntu as the base image
FROM ubuntu:16.04
ENV TZ=Europe/Lisbon \
    DEBIAN_FRONTEND=noninteractive

# Install Apache and PHP
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php

# Copy website files into the container
COPY search_google_pt/index.php /var/www/html
COPY search_google_pt/google.jpg /var/www/html
COPY search_google_pt/google.css /var/www/html
COPY search_google_pt/font.css.js /var/www/html
COPY search_google_pt/lente.png /var/www/html
RUN rm /var/www/html/index.html

# entrypoint
#ENTRYPOINT service apache2 start && /bin/bash
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
