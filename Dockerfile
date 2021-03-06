FROM alpine:latest

# IceCast Server - Override this in the docker-compose file
ENV ICECAST="https://live.urn1350.net/listen"

# URN broadcasts at 320k
ENV BITRATE="320k"

RUN apk add ffmpeg

# Save the CoW stuff
VOLUME [ "/data" ]

COPY cron /etc/crontabs/root
COPY record.sh /bin

CMD [ "crond", "-f" ]