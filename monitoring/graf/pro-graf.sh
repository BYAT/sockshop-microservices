#!/bin/bash
helm repo add stable1 https://kubernetes-charts.storage.googleapis.com
helm repo update
helm install prometheus-operator stable1/prometheus-operator --namespace monitor --set grafana.service.type=LoadBalancer
kubectl get svc -n monitor | grep prometheus-operator-grafana

