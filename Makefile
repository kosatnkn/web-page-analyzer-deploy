# ref: https://bytes.usc.edu/cs104/wiki/makefile
.PHONY: up down docker_build_api docker_build_client docker_build_client_cdn

up: docker_build_api docker_build_client_cdn
	docker compose up --detach

down:
	docker compose down

docker_build_api:
	cd ../web-page-analyzer-api \
	&& $(MAKE) docker_build

docker_build_client_cdn: docker_build_client
	cd clients \
	&& $(MAKE) docker_build

docker_build_client:
	cd ../web-page-analyzer-client \
	&& $(MAKE) docker_build
