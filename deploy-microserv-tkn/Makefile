apply:
	kubectl apply -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml  -f tasks/.  -f pipelines/. -f pr/carts.yaml -f pr/catalogue.yaml -f pr/front-pipelinerun.yaml -f pr/orders.yaml -f pr/payment.yaml -f pr/queue-master.yaml -f pr/shipping.yaml -f pr/user.yaml 
apply-all-with-docker: front-end-with-docker carts-with-docker catalogue-with-docker order--with-docker shipping-with-docker payment-with-docker queue-master-with-docker user-with-docker
delete-all-with-docker: delete-queue-master-with-docker delete-payment-with-docker delete-shipping-with-docker delete-user-with-docker delete-carts-with-docker delete-catalogue-with-docker delete-order--with-docker delete-front-end-with-docker
delete:
	kubectl delete -f tasks/. -f pipelines/. -f pr/. -f services/. -f resources/. 
list:
	tkn pr list 
logs:
	tkn pr logs -f 
apply-front-end:
	kubectl apply -f role.yaml -f workspace.yaml -f resources/resource-front-end.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml 
front-end-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-front-end.yaml -f resources/resource-user.yaml -f resources/resource-test.yaml -f ./build-images-tkn/task-front-end.yaml -f tasks/front-end-task.yaml -f tasks/waiting.yaml -f test/test-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml 
delete-front-end-with-docker:
	kubectl delete -f ./build-images-tkn/task-front-end.yaml -f tasks/waiting.yaml -f test/test-task.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml 
delete-front-end:
	 kubectl delete -f resources/resource-front-end.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -f services/front-end-dep.yaml -f services/front-end-svc.yaml 
carts-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-carts.yaml -f resources/resource-user.yaml  -f resources/resource-test.yaml -f ./build-images-tkn/task-carts.yaml -f tasks/waiting.yaml -f test/test-task.yaml  -f tasks/carts.yaml  -f tasks/carts.yaml  -f pipelines/carts.yaml  -f pr/carts.yaml  
delete-carts-with-docker:
	kubectl delete -f ./build-images-tkn/task-carts.yaml  -f tasks/carts.yaml  -f tasks/waiting.yaml -f test/test-task.yaml  -f pipelines/carts.yaml  -f pr/carts.yaml  
catalogue-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-catalogue-db.yaml -f resources/resource-catalogue.yaml  -f resources/resource-test.yaml -f resources/resource-user.yaml -f ./build-images-tkn/task-catalogue-db.yaml -f ./build-images-tkn/task-catalogue.yaml -f tasks/catalogue.yaml -f tasks/waiting.yaml -f test/test-task.yaml -f pipelines/catalogue.yaml -f pr/catalogue.yaml  
delete-catalogue-with-docker:
	kubectl delete -f ./build-images-tkn/task-catalogue.yaml -f tasks/catalogue.yaml -f tasks/waiting.yaml -f test/test-task.yaml -f pipelines/catalogue.yaml -f pr/catalogue.yaml 
order--with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-order.yaml -f ./build-images-tkn/task-order.yaml -f tasks/orders.yaml -f pipelines/orders.yaml -f  pr/orders.yaml 
delete-order--with-docker:
	kubectl delete -f ./build-images-tkn/task-order.yaml -f tasks/orders.yaml -f pipelines/orders.yaml -f  pr/orders.yaml 
delete-user-with-docker:
	kubectl delete -f ./build-images-tkn/task-user-db.yaml  -f tasks/waiting.yaml -f test/test-task.yaml -f ./build-images-tkn/task-user.yaml -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml 
user-with-docker:
	 kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-user-db.yaml -f resources/resource-user.yaml  -f resources/resource-test.yaml -f ./build-images-tkn/task-user-db.yaml -f ./build-images-tkn/task-user.yaml -f tasks/user.yaml -f tasks/waiting.yaml -f test/test-task.yaml -f pipelines/user.yaml -f pr/user.yaml  
payment-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-payment.yaml -f ./build-images-tkn/task-payment.yaml -f  tasks/payment.yaml -f pipelines/payment.yaml -f  pr/payment.yaml  
delete-payment-with-docker:
	kubectl delete -f ./build-images-tkn/task-payment.yaml -f  tasks/payment.yaml -f pipelines/payment.yaml -f  pr/payment.yaml 
shipping-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-shipping.yaml -f ./build-images-tkn/task-shipping.yaml -f  tasks/shipping.yaml -f pipelines/shipping.yaml -f pr/shipping.yaml 
delete-shipping-with-docker:
	kubectl delete -f ./build-images-tkn/task-shipping.yaml -f  tasks/shipping.yaml -f pipelines/shipping.yaml -f pr/shipping.yaml 
queue-master-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-queue-master.yaml -f ./build-images-tkn/task-queue-master.yaml -f  tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml 
delete-queue-master-with-docker:
	kubectl delete -f ./build-images-tkn/task-queue-master.yaml -f  tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml 
get:
	kubectl get all 
apply-queue-master:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-queue-master.yaml -f tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml 
delete-queue-master:
	kubectl delete -f tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -f services/queue-master-svc.yaml -f services/queue-master-dep.yaml -f services/rabbitmq-dep.yaml -f services/rabbitmq-svc.yaml 
apply-user:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-user.yaml -f ../build-images-tkn/resources/resource-user-db.yaml -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml 
delete-user:
	kubectl delete -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml -f services/user-svc.yaml -f services/user-dep.yaml -f services/user-db-dep.yaml -f services/user-db-svc.yaml 
clone:
	kubectl apply -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f ./role.yaml -f workspace.yaml -f ./git-clone/git-clone-adv.yml -f ./git-clone/git-clone-adv-taskRun.yml 
delete-clone:
	kubectl delete -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f ./role.yaml -f workspace.yaml -f ./git-clone/git-clone-adv.yml -f ./git-clone/git-clone-adv-taskRun.yml 

