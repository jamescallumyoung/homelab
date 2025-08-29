#!/usr/bin/env sh

if ! type kubectl &> /dev/null; then
  echo "ERR: kubectl not found"
  exit 1
fi

echo "INFO: Installing Argo CD"
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
echo "INFO: Argo CD installed"

echo ""
echo "Done"
