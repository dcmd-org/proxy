FROM httpd:2.4.57-bullseye

RUN chown -R www-data:www-data /usr/local/apache2

COPY ./etc/httpd.conf /usr/local/apache2/conf/httpd.conf

USER www-data:www-data

CMD ["httpd-foreground"]
