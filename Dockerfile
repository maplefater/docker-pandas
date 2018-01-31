FROM registry.docker-cn.com/library/python:3.6-alpine3.6

ENV PYTHONUNBUFFERED 1


RUN sh -c "echo "http://mirrors.aliyun.com/alpine/v3.6/main/" > /etc/apk/repositories"
RUN apk add --update --no-cache  build-base


RUN mkdir -p /opt/pandas/build/

COPY requirements.txt /opt/pandas/build/requirements.txt

RUN pip  install --no-cache-dir -r /opt/pandas/build/requirements.txt -i https://pypi.douban.com/simple/