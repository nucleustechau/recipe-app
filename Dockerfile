FROM python:rc-alpine3.10
MAINTAINER Nucleus Tech

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir app
WORKDIR  /app
COPY ./app /app

RUN adduser -D user
RUN chown -R user:user /app
USER user
