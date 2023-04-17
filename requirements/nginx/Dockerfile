FROM debian:buster
ARG DOMAIN_NAME
ARG NGINX_CONF
ENV DOMAIN_NAME=$DOMAIN_NAME
ENV NGINX_CONF=$NGINX_CONF
RUN apt-get update && apt-get install -y nginx && apt-get install -y openssl && apt-get install -y gettext && apt-get install -y vim
RUN apt-get install -y openssh-server
COPY ./conf/nginx.template /etc/nginx
COPY ./tools/* /
RUN chmod +x /tools.sh && ./tools.sh
RUN apt-get install -y net-tools
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80