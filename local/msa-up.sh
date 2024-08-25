# run discovery, config, gateway
docker run --name discovery-service -d -p 8761:8761 -e USE_PROFILE=local -e SPRING_CONFIG_ACTIVATE_ON_PROFILE=local nowgnas/cac-discovery:latest
