# Kubernetes Playground

Mess around with Kubernetes and all it's related tooling like cert-manager, argocd, kustomize, etc.

## Setup

1. [Install Minikube](https://minikube.sigs.k8s.io/docs/start/).
   
2. [Install kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl).
   
3. [Install Helm](https://helm.sh/docs/intro/install/).

4. Start Minikube by running the [1-minikube-start.sh](./scripts/1-minikube-start.sh) script.

5. Update your local `hosts` file by running the [2-hosts-file-update.sh](./scripts/2-hosts-file-update.sh) script.

6. Install [ArgoCD](https://argo-cd.readthedocs.io/en/stable/) by running the [3-argocd-install.sh](./scripts/3-argocd-install.sh) script.
   1. Copy the Initial Admin Password output at the end of the script.

7. Navigate to https://argocd.minikube.local and login with the username `admin` and the password from step 6.1.

8. Navigate to https://argocd.minikube.local/user-info and change the admin user's password.

9. Delete the `argocd-initial-admin-secret` secret.

```sh
kubectl delete secret argocd-initial-admin-secret -n argocd
```
