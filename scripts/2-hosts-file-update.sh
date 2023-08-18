INGRESS_IP="$(minikube ip)"
HOSTS_FILE="/etc/hosts"
BACKUP_HOSTS_FILE="/etc/hosts-backup"

if [ ! -f "$BACKUP_HOSTS_FILE" ]; then
  echo "Backing up hosts file."
  sudo cp $HOSTS_FILE $BACKUP_HOSTS_FILE
else
  echo "Restoring backed up hosts file."
  sudo cp -f $BACKUP_HOSTS_FILE $HOSTS_FILE
fi

echo "Appending hostnames for Kubernetes ingress rules to hosts file."
echo "$INGRESS_IP    argocd.minikube.local" | sudo tee -a $HOSTS_FILE
echo "$INGRESS_IP    echo.minikube.local" | sudo tee -a $HOSTS_FILE