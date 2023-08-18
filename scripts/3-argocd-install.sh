helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm upgrade argocd argo/argo-cd -n argocd --create-namespace -i \
    --set 'server.ingress.enabled=true' \
    --set 'configs.params.server\.insecure=true'

echo -n "Initial Admin Password = "
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
