image:
	docker build -t healthcheck .

up:
	docker-compose up

signal:
	docker-compose kill -s HUP healthy
