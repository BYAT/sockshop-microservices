#!/bin/bash
#
helm repo add elastic https://helm.elastic.co
helm repo add fluent https://fluent.github.io/helm-charts
helm repo update
helm install elasticsearch elastic/elasticsearch --version=7.9.3 --namespace=logging --values toleration.yaml
helm install fluent-bit fluent/fluent-bit --namespace=logging --values toleration.yaml
helm install kibana elastic/kibana --version=7.9.3 --namespace=logging --set service.type=LoadBalancer --values toleration.yaml
kubectl run random-logger --image=chentex/random-logger -n logging --values toleration.yaml
kubectl apply -f ingress.yaml -n logging
