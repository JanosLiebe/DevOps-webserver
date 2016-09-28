FROM        ubuntu:14.04
MAINTAINER  Janos Liebe

RUN         apt-get update
RUN         apt-get install -y git
RUN         apt-get install -y python

RUN         git clone https://github.com/JanosLiebe/DevOps-webserver.git /opt
RUN         chmod 744 /opt/DevOps-webserver/demoserver/server.py

EXPOSE      8082

ENTRYPOINT  ["/opt/DevOps-webserver/demoserver/server.py"]
