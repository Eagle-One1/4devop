FROM ubuntu

RUN apt update  && \
    apt install nginx && \
    rm -rf /var/www/html/*

COPY static-website-example/* /var/www/html

RUN sed -i 's/80 default_server/8080 default_server/g' /etc/nginx/sites-enabled/default

EXPOSE 8080

ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
