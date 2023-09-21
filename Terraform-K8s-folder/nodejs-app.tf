terraform {
  required_version = ">= 0.13"

  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

provider "kubectl" {
  config_context_cluster = "kind-kind-cluster" # Replace with your KinD cluster name
}


resource "kubectl_manifest" "node-js" {
  yaml_body = file("nodejs-app.yaml") # Path to your Kubernetes manifest file
}

