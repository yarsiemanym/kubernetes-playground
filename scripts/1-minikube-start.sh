 minikube start \
    --driver='docker' \
    --disk-size='10gb' \
    --cpus='4' \
    --memory='8gb' \
    --addons='ingress' \
    --delete-on-failure='true' \
    --profile='kubernetes-playground'

kubectl config set-context kubernetes-playground
minikube profile kubernetes-playground