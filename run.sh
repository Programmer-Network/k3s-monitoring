#!/bin/bash
set -e

# This script applies the necessary Custom Resource Definitions (CRDs) required
# by the kube-prometheus-stack.
#
# Run this script once from this directory to bootstrap the monitoring stack.
echo "Applying Prometheus CRDs using server-side apply to avoid size limitations..."
kubectl apply --server-side -f crds.yaml

echo "Prerequisites applied successfully. You can now sync the 'kube-prometheus-stack' application in ArgoCD." 