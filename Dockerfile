FROM debian:buster-slim

MAINTAINER Tom Kralidis <tomkralidis@gmail.com>

COPY requirements.txt /workshop
COPY workshop /workshop/workshop

RUN apt-get install pip

RUN pip install -r /workshop/requirements.txt

EXPOSE 8000

RUN mkdocs serve -f /workshop/workshop/mkdocs.yml
