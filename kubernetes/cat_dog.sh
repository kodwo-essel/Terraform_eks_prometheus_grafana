#!/bin/bash

cd ./deployment_files
# Default values
DEFAULT_REGION="eu-west-1"
DEFAULT_CLUSTER_NAME="voting_app_cluster"

# Get parameters or use defaults
REGION=${1:-$DEFAULT_REGION}
CLUSTER_NAME=${2:-$DEFAULT_CLUSTER_NAME}

# Update kubeconfig with the specified region and cluster name
aws eks --region "$REGION" update-kubeconfig --name "$CLUSTER_NAME"

echo "Kubeconfig updated for EKS cluster '$CLUSTER_NAME' in region '$REGION'"

# Check if cluster is reachable
kubectl get nodes

# Apply all YAML manifests
kubectl apply -f .
