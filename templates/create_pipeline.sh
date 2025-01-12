#!/usr/bin/env bash
echo "=== Proceeding with Kubernetes deployments ==="

echo "=== Applying all files in: mysql ==="
kubectl apply -f mysql/secret.yaml
kubectl apply -f mysql/persistent_volume.yaml
sleep 5
kubectl apply -f mysql/deployment.yaml

echo "=== Wait for mysql to setup... ==="
sleep 15

for folder in */; do
  if [ "$folder" != "mysql/" ] && [ -d "$folder" ]; then
    echo "=== Applying all files in: $folder ==="

    kubectl apply -f "$folder"

    echo "=== Finished with folder: $folder ==="
    echo
  fi
done