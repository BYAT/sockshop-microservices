## Introduction
This repo provides a modularized k8s platform based on K3D. The makefile will deploy platform components including elf, and tekton, in order to depoly sockshop microservices.

## Getting started
To get started, use the following incantation:

```bash
make up
```
This will bring up a k3d cluster with with all needed components to run sockshop microservices.

## Notes:
Before running make up command:
- You will need to change the docker images to yours
- You will need to add your docker secret
