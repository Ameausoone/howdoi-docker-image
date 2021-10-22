FROM python:3-alpine

RUN apk add --no-cache py3-pip g++ gcc libxslt-dev && \
    pip install --no-cache-dir howdoi && \
    apk del g++ gcc libxslt-dev py3-pip && \
    howdoi how to build small docker image with pip

ENTRYPOINT ["howdoi"]
