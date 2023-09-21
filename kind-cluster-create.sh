#!/bin/bash
CLUSTER_NAME="kind-cluster"

# Create our kind cluster after verification
echo "Hold on for your cluster to create"
echo "Creating Kind cluster with the name'$CLUSTER_NAME'..."
kind create cluster --name "$CLUSTER_NAME"

kubectl config use-context "kind-$CLUSTER_NAME"

# Download the kubeconfig to a default location for kubeconfig files
kind get kubeconfig --name "$CLUSTER_NAME" > "$HOME/.kube/config-kind-$CLUSTER_NAME"
