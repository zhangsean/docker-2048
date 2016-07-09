# docker-2048

simple is better

a smaller docker version of 2048

Base on gabrielecirulli/2048(https://github.com/gabrielecirulli/2048)

Base on alpine

Base on nginx

# Dockerfile

    FROM alpine:latest

    MAINTAINER alex <alexwhen@gmail.com>

    RUN apk --update add nginx
    
    RUN mkdir -p /run/nginx/

    COPY 2048 /var/lib/nginx/html

    EXPOSE 80

    CMD ["nginx", "-g", "daemon off;"]

# run the docker container with your own build

    git clone https://github.com/alexwhen/docker-2048.git
    docker build -t docker-2048 .
    docker run -d -p 2048:80 docker-2048

# run the docker container by pulling the image directly

    docker run -d -p 2048:80 alexwhen/docker-2048

# Access the game

    http://127.0.0.1:2048

If you run docker with boot2docker on Mac or Windows, the URL should be:
 
    http://192.168.59.103:2048
