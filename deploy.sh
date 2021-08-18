#!/bin/bash

# Apply env variables and secrets
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

# Udagram Feed API
kubectl apply -f udagram-api-feed/deployment/deployment.yaml
kubectl apply -f udagram-api-feed/deployment/service.yaml

# Udagram User API
kubectl apply -f udagram-api-user/deployment/deployment.yaml
kubectl apply -f udagram-api-user/deployment/service.yaml

# Udagram Frontend
kubectl apply -f udagram-frontend/deployment/deployment.yaml
kubectl apply -f udagram-frontend/deployment/service.yaml

# Udagram Reverse Proxy
kubectl apply -f udagram-reverseproxy/deployment/deployment.yaml
kubectl apply -f udagram-reverseproxy/deployment/service.yaml



