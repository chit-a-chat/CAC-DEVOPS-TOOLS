# run discovery, config, gateway
echo "insert github token"
read GITHUB_TOKEN

docker run --name discovery-service -d -p 8761:8761 -e PROFILES=local nowgnas/cac-discovery:latest
docker run --network host --name config-service -d -p 8888:8888 -e ACTIVE_PROFILE=local -e PROFILES=local -e JKS_PASSWORD=chitachat -e GITHUB_USERNAME=nowgnas -e GITHUB_PASSWORD="$GITHUB_TOKEN" nowgnas/cac-config:latest
