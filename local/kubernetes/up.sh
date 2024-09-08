kubectl apply -f discovery/service.yaml
kubectl apply -f config/service.yaml
kubectl apply -f apigateway/service.yaml

kubectl apply -f discovery/deployment.yaml
kubectl apply -f config/deployment.yaml
kubectl apply -f apigateway/deployment.yaml