# Install Loki and Grafana to monitor logs

```bash
kubectl create namespace logging
```

```bash
# Install Grafana
helm repo add grafana https://grafana.github.io/helm-charts
# Helm repo update for loki
helm upgrade --install loki -f loki-values.yaml -n logging --create-namespace grafana/loki-stack
# Port-forward to access Grafana dashboard using 3000 port
kubectl port-forward service/loki-grafana 3000:80 -n logging
# Get the password to login to Grafana dashboard
kubectl get secret loki-grafana -o jsonpath="{.data.admin-password}" -n logging | base64 --decode
```
