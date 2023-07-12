set -x

sleep 0.5
grep "type: kubernetes.io/ssh-auth" /root/kubean-cr.yml || kubectl create secret generic mini-ssh-auth -n kubean-system --type='kubernetes.io/ssh-auth' --from-file=ssh-privatekey=/root/.ssh/id_rsa --dry-run=client -o yaml >> /root/kubean-cr.yml