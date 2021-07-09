FROM nginx:1.21.1-alpine

LABEL maintainer="onlinejudge95"

WORKDIR /usr/src/app

COPY . /usr/share/nginx/html

RUN mv /usr/share/nginx/html/bin/ . \
    && chmod +x ./bin/entrypoint.sh

ENTRYPOINT [ "./bin/entrypoint.sh" ]