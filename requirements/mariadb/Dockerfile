FROM debian:buster
ARG MARIADB_ROOT_PASSWD
ARG MARIADB_USER_PASSWD
ARG MARIADB_USER_NAME
ARG MARIADB_DB_NAME
ENV MARIADB_ROOT_PASSWD=$MARIADB_ROOT_PASSWD
ENV MARIADB_USER_PASSWD=$MARIADB_USER_PASSWD
ENV MARIADB_USER_NAME=$MARIADB_USER_NAME
ENV MARIADB_DB_NAME=$MARIADB_DB_NAME
RUN apt-get update && apt-get install -y mariadb-server \
    && apt-get install -y procps \
     man \
     net-tools
RUN rm -rf /var/lib/mysql;
COPY ./tools/* /
COPY ./conf/my.cnf /etc/mysql
ENTRYPOINT [ "./tools.sh" ]