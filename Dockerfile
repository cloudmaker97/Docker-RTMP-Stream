FROM jrottenberg/ffmpeg
MAINTAINER Dennis Heinrich
WORKDIR /app
COPY ./audio /app
COPY ./script /app/script
COPY ./video /app/video
RUN chmod +x ./script/stream.sh
ENTRYPOINT ./script/stream.sh