#!/bin/bash

# Check the deployment names and their pod status
kubectl get deployments
# Create a Service object that exposes the frontend deployment
# The command below will ceates an external load balancer and assigns a fixed, external IP to the Service.
kubectl expose deployment udagram-frontend --type=LoadBalancer --name=publicfrontend
kubectl expose deployment udagram-reverseproxy --type=LoadBalancer --name=reverseproxy
# Repeat the process for the *reverseproxy* deployment.
# Check name, ClusterIP, and External IP of all deployments
kubectl get services
kubectl get pods # It should show the STATUS as Running