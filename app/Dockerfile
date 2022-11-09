# pull official base image
FROM python:3.11-alpine

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2
RUN apk update && apk add --virtual build-essential gcc python3-dev musl-dev && apk add postgresql-dev && pip install psycopg2

# install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy entrypoint.sh
COPY ./entrypoint.sh .
RUN sed -i 's/\r$//g' /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

# copy project
COPY . .

# make migrations
RUN python manage.py makemigrations

RUN python manage.py migrate

# run entrypoint.sh
# ENTRYPOINT ["/usr/src/app/entrypoint.sh"]