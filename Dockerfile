FROM alpine:3.9

RUN apk update

RUN apk add python2 py-pip fping

COPY ./ping-exporter.py /opt/

ENV PORT=80

CMD [ "python2", "/opt/ping-exporter.py", "-p", "80" ]
