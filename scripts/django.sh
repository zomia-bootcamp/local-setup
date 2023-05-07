#!/usr/bin/env bash
createdb "django-install-test-db"
mkdir -p ~/sei/django-env
cd ~/sei/django-env
git clone git@git.generalassemb.ly:ga-wdi-boston/django-template.git
pipenv shell "pipenv install django==3.0 psycopg2-binary; cd django-template; git checkout installfest; python manage.py migrate; python manage.py runserver; exit;"
rm -rf ~/sei/django-env/django-template
dropdb "django-install-test-db"
echo "Installation complete."
