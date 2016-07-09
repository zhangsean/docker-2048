FROM alpine:latest

MAINTAINER alex <alexwhen@gmail.com>

RUN apk --update add nginx

RUN mkdir -p /run/nginx/

COPY 2048 /var/lib/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
