#!/bin/bash

kubectl apply -f biocad-web-deployment.yaml
kubectl apply -f biocad-web-service.yaml

echo -n "Starting pods"

SPINNER=("." ".." "..." "   ")  
TIMEOUT=120  
while [[ $(kubectl get pods -l app=biocad-web -o 'jsonpath={..status.phase}' | grep -c Running) -lt 1 ]]; do
    for i in "${SPINNER[@]}"; do
        echo -ne "\rWaiting for running pods$i"  
        sleep 0.5  
        TIMEOUT=$((TIMEOUT - 1))
        if [[ $TIMEOUT -le 0 ]]; then
            echo -e "\nError: Pods starting timeout."
            exit 1
        fi
    done
done

echo -e "\rAll pods are ready!   "  

echo "Checking service URL..."
SERVICE_URL=$(minikube service biocad-web-service --url)
echo "Service is accessible at: $SERVICE_URL"

echo "If you want to enable port forwarding run:"
echo "kubectl port-forward --address 0.0.0.0 service/biocad-web-service 32777:32777"

