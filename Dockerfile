FROM python:3.6-alpine3.6
 ENV PYTHONUNBUFFERED 1
 RUN mkdir /code && apk update && apk add postgresql-dev gcc python3-dev musl-dev
 WORKDIR /code
 ADD requirements.txt /code/
 RUN pip install -r requirements.txt
 ADD . /code/
