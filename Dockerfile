FROM python:2.7.18-alpine3.11

LABEL maintainer="jonz94 <jody16888@gmail.com>"

# add edge community repository
RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

# install ffmpeg
RUN apk add --no-cache ffmpeg@edge openssh-client@edge

# install autosub
RUN pip install autosub

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
