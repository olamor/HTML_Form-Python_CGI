FROM ubuntu

RUN apt update
RUN apt -y install apache2
RUN apt -y install python3

#load apache cgi module
RUN a2enmod cgi
RUN service apache2 restart

RUN chmod -R u+rwx,g+x,o+x /var/www/html

CMD /usr/sbin/apache2ctl -D FOREGROUND