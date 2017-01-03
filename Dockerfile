FROM alpine:edge

RUN apk --update add python3 && \
  rm /var/cache/apk/*

WORKDIR /usr/src/app

RUN adduser -u 9000 app -D
COPY . /usr/src/app
RUN chown -R app:app /usr/src/app

USER app

WORKDIR /code

CMD ["/usr/src/app/codeclimate-pep8"]
