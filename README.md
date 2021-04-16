# ccontainer
Simple C development container setup, so you dont have to have local deps.

## Prerequisities
docker
docker-compose

## How to run
So smooth, just `docker-compose up` and then save main.c, to see output.

## How it works
Simple dockerfile, that executes `watch.bash` script.
`inotifywait` used, then build with `clang` and echoed.

Everytime you save, docker-compose bind mount will sync files and inotify does hopefully see a change.
