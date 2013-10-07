# Create a proxy server.
# To build:
#   $ sudo docker build -t <container-name> .
# To run:
#   $ sudo docker run -p <public-port>:3128 -d <container-name>
#
FROM ubuntu
MAINTAINER George Goh "georgegohkokleong@gmail.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y tinyproxy

RUN echo "User nobody"                                             > /etc/tinyproxy.conf
RUN echo "Group nogroup"                                          >> /etc/tinyproxy.conf
RUN echo "Port 3128"                                              >> /etc/tinyproxy.conf
RUN echo "Timeout 600"                                            >> /etc/tinyproxy.conf
RUN echo "DefaultErrorFile \"/usr/share/tinyproxy/default.html\"" >> /etc/tinyproxy.conf
RUN echo "StatFile \"/usr/share/tinyproxy/stats.html\""           >> /etc/tinyproxy.conf
RUN echo "Logfile \"/var/log/tinyproxy/tinyproxy.log\""           >> /etc/tinyproxy.conf
RUN echo "LogLevel Info"                                          >> /etc/tinyproxy.conf
RUN echo "PidFile \"/var/run/tinyproxy/tinyproxy.pid\""           >> /etc/tinyproxy.conf
RUN echo "MaxClients 20"                                          >> /etc/tinyproxy.conf
RUN echo "MinSpareServers 3"                                      >> /etc/tinyproxy.conf
RUN echo "MaxSpareServers 10"                                     >> /etc/tinyproxy.conf
RUN echo "StartServers 5"                                         >> /etc/tinyproxy.conf
RUN echo "MaxRequestsPerChild 0"                                  >> /etc/tinyproxy.conf
RUN echo "ViaProxyName \"tinyproxy\""                             >> /etc/tinyproxy.conf
RUN echo "ConnectPort 443"                                        >> /etc/tinyproxy.conf
RUN echo "ConnectPort 563"                                        >> /etc/tinyproxy.conf

EXPOSE 3128

ENTRYPOINT ["/usr/sbin/tinyproxy", "-d"]
