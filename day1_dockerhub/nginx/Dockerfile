FROM ubuntu

RUN apt update  && \
    apt install nginx git -y && \
    rm -rf /var/www/html/* && \
    apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

COPY static-website-example/ /var/www/html/

RUN sed -i 's/80 default_server/8080 default_server/g' /etc/nginx/sites-enabled/default

EXPOSE 8080

ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
