.DEFAULT_GOAL := run-site
.PHONY: run-site stop-site jellyfin jellyfin-stop ddc ddc-stop wireshark wireshark-stop linkstack linkstack-stop

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

wireshark:
	@docker compose -f ./wireshark/docker-compose.yml up -d

wireshark-stop:
	@docker compose -f ./wireshark/docker-compose.yml down -v

linkstack:
	@docker compose -f ./linkstack/docker-compose.yml up -d

linkstack-stop:
	@docker compose -f ./linkstack/docker-compose.yml down
