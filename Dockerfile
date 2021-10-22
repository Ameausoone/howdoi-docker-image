FROM python:3-alpine

RUN apk add --update --no-cache py3-pip && \ 
    apk add --no-cache g++ gcc libxslt-dev && \
    pip install --no-cache-dir howdoi && \
    apk del g++ gcc libxslt-dev py3-pip && \
    howdoi how to build small docker image with pip

ENTRYPOINT ["howdoi"]
