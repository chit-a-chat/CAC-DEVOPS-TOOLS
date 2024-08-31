# run discovery, config, gateway
docker run --name discovery-service -d -p 8761:8761 -e PROFILES=local nowgnas/cac-discovery:latest
docker run --name config-service -d -p 8888:8888 -e ACTIVE_PROFILE=local -e PROFILES=local -e JKS_PASSWORD=chitachat nowgnas/cac-config:latest
