#!/bin/bash

kubectl --kubeconfig /root/kind.config get pods -n kubean-system | grep 'kubean' | grep 'Running'