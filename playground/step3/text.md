Now we will create a cluster by Kubean, what a exciting moment!

> We put the kubean-cr.yml into current directory in advance, you can check it out by `cat kubean-cr.yml`{{exec}}

Install the customised Kubean CR YAML, it will create a [Job](https://kubernetes.io/docs/concepts/workloads/controllers/job/):

```plain
kubectl apply -f ./kubean-cr.yml
```{{exec}}

Let's watch the logs of job that just launched:

> The process takes a while, probably 15 minutes, you could grab some coffee~

```plain
sleep 5 && kubectl -n kubean-system logs -f $(kubectl -n kubean-system get pods | awk '$1~"kubean-cluster-mini-install-ops-job*" {print $1}')
```{{exec}}

<br>

After all sucessfully done, we can simply check the cluster status:

```plain
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes
```{{exec}}
