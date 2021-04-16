FROM ubuntu:latest

RUN mkdir -p /app
WORKDIR /app

RUN apt-get update
RUN apt-get -y install clang inotify-tools

COPY . .
RUN chmod +x ./watch.sh

ENTRYPOINT ["bash", "watch.sh"]