FROM ubuntu:latest

RUN mkdir -p /app
WORKDIR /app

RUN apt-get update
RUN apt-get -y install clang inotify-tools

COPY . .
RUN chmod +x ./watch.bash

ENTRYPOINT ["bash", "watch.bash"]