FROM debian:buster
ARG FTP_USER
ARG FTP_USER_PASSWD
ENV FTP_USER=$FTP_USER
ENV FTP_USER_PASSWD=$FTP_USER_PASSWD
RUN apt-get update && apt-get install -y vsftpd vim man
RUN adduser --gecos ""  --disabled-password $FTP_USER && echo "$FTP_USER:$FTP_USER_PASSWD" | chpasswd
RUN echo "$FTP_USER" | tee -a /etc/vsftpd.userlist
COPY ./conf/vsftpd.conf /etc
COPY ./tools/tools.sh /
ENTRYPOINT [ "./tools.sh" ]
EXPOSE 21
EXPOSE 30000-30250
# CMD ["tail", "-f", "/dev/null"]