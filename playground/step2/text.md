Once a Kind cluster ready, we can install Kubean into it.

It's recommend using helm to install Kubean, so we need to install helm first, along with kubectl:

```plain
curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
curl -L -o /usr/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x /usr/bin/kubectl
```{{exec}}

Install Kubean by helm chart:

```plain
helm repo add kubean-io https://kubean-io.github.io/kubean-helm-chart/
helm install kubean kubean-io/kubean --create-namespace -n kubean-system
```{{exec}}

After that check the Kubean pod status:

```plain
kubectl -n kubean-system get pods
```{{exec}}
