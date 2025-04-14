#!/bin/bash

cd /home/jimmy/Desktop/DEV/DevOps/Training/Kubernetes/projects/voting_App/kubernetes/final

# Update kubeconfig
aws eks --region eu-west-1 update-kubeconfig --name voting_app_cluster

# Check if cluster is reachable
kubectl get nodes

# Apply all YAML manifests
kubectl apply -f .
