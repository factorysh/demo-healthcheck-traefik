image:
	docker build -t healthcheck .

up:
	docker-compose up

scale-up:
	docker-compose up -d --scale healthy=2

scale-down:
	docker-compose up -d --scale healthy=1

signal:
	docker kill -s HUP demo-healthcheck-traefik_healthy_1
