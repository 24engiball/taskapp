FROM richarvey/nginx-php-fpm:latest
ENV WEBROOT /var/www/html/public
COPY  . .
#RUN chmod 755 setup_database.sh
RUN chmod +x test.sh
RUN chmod +x  test2.sh
RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*
#docker image build -t api .