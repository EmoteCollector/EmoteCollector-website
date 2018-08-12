#!/usr/bin/env sh

gunicorn --workers 1 --threads 4 --max-requests 10000 --reload --bind 0.0.0.0:8080 app:app &
gunicorn --workers 1 --worker-class aiohttp.GunicornWebWorker --threads 4 --max-requests 10000 --reload --bind 0.0.0.0:8081 api:app &

wait
