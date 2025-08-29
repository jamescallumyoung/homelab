#!/usr/bin/env sh

# This file should be run from the root directory!

if ! type helm &> /dev/null; then
  echo "ERR: helm not found"
  exit 1
fi

echo "INFO: Creating Argo projects"
helm upgrade projects ./argo-projects --namespace argocd
echo "INFO: Created Argo projects"

echo ""

echo "INFO: Creating Argo apps"
helm upgrade apps ./argo-apps --namespace argocd
echo "INFO: Created Argo apps"

echo ""
echo "Done"
