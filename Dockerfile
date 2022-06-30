FROM python:alpine
RUN apk update && apk upgrade 
RUN apk add --update gcc musl-dev libffi-dev 
RUN pip install --upgrade sslyze
RUN apk add cmd:bash
WORKDIR /usr/src/app
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT  ["/entrypoint.sh"]


