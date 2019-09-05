#build this image with a tag whalesayjh
FROM docker/whalesay:latest
RUN apt-get update && apt-get install -y fortunes
CMD while true; do /usr/games/fortune -a| cowsay; sleep 2; done