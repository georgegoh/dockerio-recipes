# Create a lighttpd server with empty index page and serve a /proxy.pac file.
# To build:
#   $ sudo docker build -t <container-name> .
# To run:
#   $ sudo docker run -p <public-port>:80 -d <container-name>
#

FROM ubuntu
MAINTAINER George "georgegohkokleong@gmail.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y lighttpd

RUN touch /var/www/index.html
ADD proxy.pac /var/www/proxy.pac
EXPOSE 80

ENTRYPOINT ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
