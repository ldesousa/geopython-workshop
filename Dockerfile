FROM debian:buster-slim

MAINTAINER Tom Kralidis <tomkralidis@gmail.com>

#COPY requirements.txt /workshop
ADD . /workshop

RUN apt-get update
RUN apt-get install python3-pip -y

RUN pip3 install -r /workshop/requirements.txt

EXPOSE 4000

ENTRYPOINT ["mkdocs", "serve", "-a", "0.0.0.0:4000" "-f", "/workshop/workshop/mkdocs.yml"]
