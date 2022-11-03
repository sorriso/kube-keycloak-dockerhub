# you like this work ?

[!["You like it ?"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/sorriso)

# kube-keycloak-dockerhub

Kubernetes yaml configuration files for keycloak using docker hub image

> DISCLAMER : This stuff is just for helping people to understand how things work, it is NOT for production use, I do NOT provide any support on it

## prerequisite:

1. Rancher desktop (tested on V1.6.1) installed locally & running (tested on OSX 12.6) with:

   - "containerd" selected as main command tool

   - the "traefik" service installed by default

   - kubernetes v1.4.27 selected / installed

## How to make it working :

1. run "./1-start-keycloak.sh" to install & start keycloak

2. run "./2-stop-keycloak.sh" to stop keycloak
