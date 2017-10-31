FROM alpine:edge

WORKDIR /usr/src/app

RUN adduser -u 9000 -D app

RUN apk add --no-cache python3 && \
  rm /var/cache/misc/*

COPY requirements.txt /usr/src/app
RUN pip3 install -r requirements.txt

COPY . /usr/src/app
RUN chown -R app:app /usr/src/app

USER app

WORKDIR /code

CMD ["/usr/src/app/codeclimate-pep8"]
