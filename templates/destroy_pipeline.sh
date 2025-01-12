#!/usr/bin/env bash
echo "=== Deleting Kubernetes resources ==="

for folder in */; do
  if [ -d "$folder" ]; then
    echo "=== Deleting all files in folder: $folder ==="
    
    kubectl delete -f "$folder"

    echo "=== Finished with folder: $folder ==="
    echo
  fi
done

echo "=== All Kubernetes resources have been removed ==="