Project diary:

Day 1:

  A. Working on pre-requests
  - Clone all needed services from https://github.com/microservices-demo 
  - Combine them in a single repo
  - prepare Infrastructure for the project which includes:

      i.  AWS infrastructure built using terraform (terraform locally)

      ii. Platform; Kubernetes instance using the sandbox (K3D)

      iii.prepare all platform components needed in Makefile.
  - push the repo to GitHub

Day 2:

  A. understanding the structure of the project

  B. Testing docker images (Front-end service)

  - build docker image locally
  - run docker image locally
  - check the health of the service
  - push docker image locally
  - build and push Front-end docker images using tekton cicd tool in Kubernetes cluster 

Day 3:

  Testing docker images 

  A. shipping service

  - build docker image locally
  - run docker image locally
  - check the health of the service
  - push docker image locally
  - build and push shipping docker images using tekton cicd tool in Kubernetes cluster 

B. orders service

  - build docker image locally
  - run docker image locally
  - check the health of the service
  - push docker image locally
  - build and push orders docker images using tekton cicd tool in Kubernetes cluster 

Day 4:

  A. carts service

  - build docker image locally
  - run docker image locally
  - check the health of the service

    i. the result of the health err for db because there is no connection yet.

  - push docker image locally
  - build and push carts docker images using tekton cicd tool in Kubernetes cluster 
  - deploy Front-end, shipping, and carts in Kubernetes cluster using tekton 

Day 5:

  A.catalogue service

  - build docker image locally
  - run docker image locally
  - build DB docker image locally
  - run DB docker image locally
  - check the health of the service

    i. the result of the health err for db because there is no connection yet.

  - push docker images locally
  - build and push catalogue docker images using tekton cicd tool in Kubernetes cluster 
  - deploy catalogue in Kubernetes cluster using tekton 

Day 6:

  A.payment service

  - build docker image locally
  - run docker image locally
  - check the health of the service

    i. the result of the health err for db because there is no connection yet.

  - push docker image locally
  - build and push payment docker images using tekton cicd tool in Kubernetes cluster 
  - deploy payment in Kubernetes cluster using tekton

  B. carts service

  - build docker image locally
  - run docker image locally
  - check the health of the service
  - push docker image locally
  - build and push carts docker images using tekton cicd tool in Kubernetes cluster 
  - deploy carts in Kubernetes cluster using tekton

  C. Load-test service

  - build docker image locally
  - run docker image locally
  - check the health of the service
  - push docker image locally
  - build and push load-test docker images using tekton cicd tool in kubernetes cluster 
  - deploy Load-test in kubernetes cluster using tekton

Day 7:

  A.user service
  - build docker image locally
  - run docker image locally
  - build DB docker image locally
  - run DB docker image locally
  - check the health of the service

    i. the result of the health err for db becouse there is no connection yet.

  - push docker images locally
  - build and push user docker images using tekton cicd tool in kubernetes cluster 

  B.Q-master

  - build docker image locally
  - run docker image locally
  - check the health of the service
  - push docker image locally
  - build and push Q-master docker images using tekton cicd tool in Kubernetes cluster 
  - deploy Q-master in Kubernetes cluster using tekton

Day 8:

  - deploy all the services together in a single file to Kubernetes cluster using my docker images

    i. this step has been done in order to test my docker images 
  
Day 9:

  - building and pushing all docker images using tekton cicd tool

    i.  run all the tasks in parallel
    ii. try to combine all tasks for a single service in a single pipeline 
  
Day 10:

  - Combining all tasks for a single service in a single pipeline 

Day 11:

  - try to pass tasks from one namespace to another (from test to prod)
 
Day 12:
  - deploy user in kubernetes cluster using tekton
    i. the user build image is working with deletion of shutdown line from Dockerfile 
  - test first attempt
    i. create task p and pr 
Day 13:
  - test 2nd attempt
    i. fix test js file 
    ii. rebuild docker image (e2e-js-test) and push it locally(without using tekton task)
Day 14:
  - 
