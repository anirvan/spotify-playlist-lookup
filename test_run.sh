#!/bin/sh
docker-compose -f docker-compose.test.yml down -v
docker-compose -f docker-compose.test.yml up -d --build
docker-compose -f docker-compose.test.yml exec web python manage.py create_db
