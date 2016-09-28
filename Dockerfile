FROM        python:2.7
MAINTAINER  Markus Suonto

COPY        demoserver /opt/demoserver
RUN         chmod 744 /opt/demoserver/server.py

EXPOSE      8082

ENTRYPOINT  ["/opt/demoserver/server.py"]
