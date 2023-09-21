#!/bin/bash

# Set the Kind version you want to install
KIND_VERSION="v0.20.0"

# Define the URL to download the Kind binary
KIND_URL="https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64"

echo "Downloading Kind v0.20.0..."
curl -Lo kind "${KIND_URL}"

chmod +x kind

sudo mv kind /usr/local/bin

kind version

# Check if Kind is installed
if ! command -v kind &> /dev/null; then
    echo "Kind is not installed. Please install it from https://kind.sigs.k8s.io/docs/user/quick-start/"
    exit 1
fi

# Check if the cluster with same name already is created
if kind get clusters | grep -q "$CLUSTER_NAME"; then
    echo "Kind cluster '$CLUSTER_NAME' already exists."
    exit 1
fi

exit 0

