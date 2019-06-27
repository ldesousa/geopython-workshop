FROM python:3.7.3-alpine3.9

LABEL maintainer="Tom Kralidis <tomkralidis@gmail.com>, Just van den Broecke <justb4@gmail.com>"

ADD . /workshop

RUN pip3 install -r /workshop/requirements.txt

EXPOSE 4000

ENTRYPOINT ["mkdocs", "serve", "-a", "0.0.0.0:4000", "-f", "/workshop/mkdocs.yml"]
