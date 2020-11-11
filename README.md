## Introduction
This repo provides a modularized k8s platform based on K3D. The makefile will deploy platform components including elf, and tekton, in order to depoly sockshop microservices.

## Getting started
To get started, use the following command:

```bash
make up
```
This will bring up a k3d cluster with all needed components and deploy sockshop microservices.

## Notes:
Before running make up command:
- You will need to change the docker images to yours
- You will need to add your docker secret
                                        
## Track your tekton logs 
In order to track microservices logs you can run the following command:

```bash
make track
```

or you can simply check the list of pipelines status by running this command:

```bash
make list
```
whenever you get the pipeline status as succeeded that means all microservices depolyed in test env, the test is passed and all microservices released to prod env

## Dirctories:
- #####  apps

  This directory for all Sock Shop microservices.
- #####  deploy-microserv-tkn
  This directory for deploying Sock Shop microservices on Kubernetes using tekton cicd tool.
- #####  documents
  This consists of project diary and screenshots of kanban board. 
- #####  monitoring
  This directory for monitoring and logging. The monitoring is performed by prometheus and all services expose a /metrics and all logging is performed by elasticsearch 
## Project Structure  
  I drew this digram to simplify the project

![image](https://user-images.githubusercontent.com/44238363/98681723-1e82d000-2374-11eb-8252-bad5d3f60b75.png)

## Screenshot:
- Pipelinerun logs 

![image](https://user-images.githubusercontent.com/44238363/97749311-e5d73100-1aff-11eb-9e14-847c7836eb6e.png)

- Monitoring 

![image](https://user-images.githubusercontent.com/44238363/97751983-449ea980-1b04-11eb-9df9-dfa4869e2465.png)

- Sock Shop webpage

![image](https://user-images.githubusercontent.com/44238363/97751665-b9251880-1b03-11eb-9249-fe506e7cac80.png)
