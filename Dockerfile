FROM python:3.5

WORKDIR /usr/src/app

RUN adduser -u 9000 app
COPY . /usr/src/app
RUN chown -R app:app /usr/src/app

USER app

WORKDIR /code

CMD ["/usr/src/app/pep8.py", "--codeclimate"]
