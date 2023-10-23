.DEFAULT_GOAL := run-site

run-site:
	@docker compose up -d

stop-site:
	@docker compose down -v

jellyfin:
	@docker compose -f ./jellyfin-app/docker-compose.yml up -d 

jellyfin-stop:
	@docker compose -f ./jellyfin-app/docker-compose.yml down -v

ddc:
	@docker compose -f ./ddclient/docker-compose.yml up -d

ddc-stop:
	@docker compose -f ./ddclient/docker-compose.yml down -v

ewelink:
	@docker compose -f ./ewelink/docker-compose.yml up -d

ewelink-stop:
	@docker compose -f ./ewelink/docker-compose.yml down -v