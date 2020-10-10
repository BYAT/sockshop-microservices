## Introduction
This repo provides a modularized k8s platform based on K3D. The makefile will deploy platform components including elk (elf), vault, and tekton, in order to depoly sockshop microservices.

## Getting started
To get started, use the following incantation:

```bash
make up
make build
```
This will bring up a k3d cluster with the namespaces that will be used for the platform services and will reset the logs. It include sockshop microservices services.