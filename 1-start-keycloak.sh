kubectl apply -f common
sleep 1
kubectl apply -f postgres
sleep 1
kubectl apply -f keycloak

#nerdctl -n k8s.io pull postgres:14.6-bullseye
#nerdctl -n k8s.io pull quay.io/keycloak/keycloak:20.0.0-0
