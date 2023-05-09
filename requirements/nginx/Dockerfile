FROM ubuntu:latest
RUN apt-get update && apt-get install -y vim openssh-server tcpdump git build-essential
RUN apt-get install -y net-tools
RUN git clone https://github.com/Webserver-42/webserv.git
COPY ./tools/* /
CMD ["./tools.sh"]
EXPOSE 80