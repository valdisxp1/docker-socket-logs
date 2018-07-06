FROM alpine:3.5

RUN apk add --no-cache bash netcat-openbsd

EXPOSE 8080

CMD [ "bash", "-c", "while true; do nc -vl 8080; done" ]
