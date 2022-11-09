#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

# collect static files
python manage.py collectstatic --noinput

python manage.py flush --no-input

# make migrations
python manage.py makemigrations

python manage.py migrate

# run gunicorn
gunicorn daw_django_docker.wsgi:application --bind 0.0.0.0:$PORT

exec "$@"