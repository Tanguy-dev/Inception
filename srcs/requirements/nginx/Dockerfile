FROM alpine:3.15

RUN apk update
RUN apk upgrade

#-----------------NGINX------------------------#

RUN apk add nginx

RUN mkdir -p /var/www/html/

#COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY conf/default.conf /etc/nginx/http.d/default.conf
#COPY conf/default.conf /etc/nginx/sites-enabled/default

#----------------OPENSSL-----------------------------#

RUN apk add openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 \ 
	-sha256 -days 365 -nodes -out /etc/nginx/ssl/inception.cert \
	-keyout /etc/nginx/ssl/inception.key \ 
	-subj "/C=FR/ST=Paris/L=Paris/O=School 42/OU=thamon/CN=thamon.42.fr"

#----------------OPENRC-----------------------------#

RUN apk add openrc

RUN rc-update add nginx default

#---------------------------------------------------#

EXPOSE 443

CMD	["nginx", "-g", "daemon off;"]