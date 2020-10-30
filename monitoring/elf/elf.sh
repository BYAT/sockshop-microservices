#!/bin/bash
#
helm repo add elastic https://helm.elastic.co
helm repo add fluent https://fluent.github.io/helm-charts
helm repo update
helm install elasticsearch elastic/elasticsearch --version=7.9.3 --namespace=logging
helm install fluent-bit fluent/fluent-bit --namespace=logging
helm install kibana elastic/kibana --version=7.9.3 --namespace=logging --set service.type=NodePort
kubectl apply -f ingress.yaml -n logging
