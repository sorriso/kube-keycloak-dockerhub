kubectl apply -f common/keycloak-namespace.yaml
sleep 3
kubectl apply -f common
sleep 3
kubectl apply -f keycloak
