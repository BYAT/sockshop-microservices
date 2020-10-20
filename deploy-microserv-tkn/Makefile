apply:
	kubectl apply -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml  -f tasks/.  -f pipelines/. -f pr/carts.yaml -f pr/catalogue.yaml -f pr/front-pipelinerun.yaml -f pr/orders.yaml -f pr/payment.yaml -f pr/queue-master.yaml -f pr/shipping.yaml -f pr/user.yaml -n test
delete:
	kubectl delete -f tasks/. -f pipelines/. -f pr/. -f services/. -f resources/. -n test
list:
	tkn pr list -n test
logs:
	tkn pr logs -f -n test
apply-front-end:
	kubectl apply -f role.yaml -f workspace.yaml -f resources/resource-front-end.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -n test
front-end-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-front-end.yaml -f ./build-images-tkn/task-front-end.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -n test
delete-front-end-with-docker:
	kubectl delete -f ./build-images-tkn/task-front-end.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -n test
delete-front-end:
	 kubectl delete -f resources/resource-front-end.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -f services/front-end-dep.yaml -f services/front-end-svc.yaml -n test
carts-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-carts.yaml -f ./build-images-tkn/task-carts.yaml  -f tasks/carts.yaml  -f tasks/carts.yaml  -f pipelines/carts.yaml  -f pr/carts.yaml  -n test
delete-carts-with-docker:
	kubectl delete -f ./build-images-tkn/task-carts.yaml  -f tasks/carts.yaml  -f tasks/carts.yaml  -f pipelines/carts.yaml  -f pr/carts.yaml  -n test
catalogue-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-catalogue-db.yaml -f resources/resource-catalogue.yaml -f ./build-images-tkn/task-catalogue-db.yaml -f ./build-images-tkn/task-catalogue.yaml -f tasks/catalogue.yaml -f pipelines/catalogue.yaml -f pr/catalogue.yaml -n test 
delete-catalogue-with-docker:
	kubectl delete -f ./build-images-tkn/task-catalogue.yaml -f tasks/catalogue.yaml -f pipelines/catalogue.yaml -f pr/catalogue.yaml -n test
order--with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-order.yaml -f ./build-images-tkn/task-order.yaml -f tasks/orders.yaml -f pipelines/orders.yaml -f  pr/orders.yaml -n test
delete-order--with-docker:
	kubectl delete -f ./build-images-tkn/task-order.yaml -f tasks/orders.yaml -f pipelines/orders.yaml -f  pr/orders.yaml -n test
delete-user-with-docker:
	kubectl delete -f ./build-images-tkn/task-user-db.yaml -f ./build-images-tkn/task-user.yaml -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml -n test
user-with-docker:
	 kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-user-db.yaml -f resources/resource-user.yaml -f ./build-images-tkn/task-user-db.yaml -f ./build-images-tkn/task-user.yaml -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml -n test 
payment-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-payment.yaml -f ./build-images-tkn/task-payment.yaml -f  tasks/payment.yaml -f pipelines/payment.yaml -f  pr/payment.yaml -n test 
delete-payment-with-docker:
	kubectl delete -f ./build-images-tkn/task-payment.yaml -f  tasks/payment.yaml -f pipelines/payment.yaml -f  pr/payment.yaml -n test
shipping-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-shipping.yaml -f ./build-images-tkn/task-shipping.yaml -f  tasks/shipping.yaml -f pipelines/shipping.yaml -f pr/shipping.yaml -n test
delete-shipping-with-docker:
	kubectl delete -f ./build-images-tkn/task-shipping.yaml -f  tasks/shipping.yaml -f pipelines/shipping.yaml -f pr/shipping.yaml -n test
queue-master-with-docker:
	kubectl apply  -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f role.yaml -f workspace.yaml -f resources/resource-queue-master.yaml -f ./build-images-tkn/task-queue-master.yaml -f  tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -n test
delete-queue-master-with-docker:
	kubectl delete -f ./build-images-tkn/task-queue-master.yaml -f  tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -n test
get:
	kubectl get all -n test
apply-queue-master:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-queue-master.yaml -f tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -n test
delete-queue-master:
	kubectl delete -f tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -f services/queue-master-svc.yaml -f services/queue-master-dep.yaml -f services/rabbitmq-dep.yaml -f services/rabbitmq-svc.yaml -n test
apply-user:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-user.yaml -f ../build-images-tkn/resources/resource-user-db.yaml -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml -n test
delete-user:
	kubectl delete -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml -f services/user-svc.yaml -f services/user-dep.yaml -f services/user-db-dep.yaml -f services/user-db-svc.yaml -n test
clone:
	kubectl apply -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f ./role.yaml -f workspace.yaml -f ./git-clone/git-clone-adv.yml -f ./git-clone/git-clone-adv-taskRun.yml -n test
delete-clone:
	kubectl delete -f resources/github-secrets.yaml -f ./secret.yaml -f ./sa.yaml -f ./role.yaml -f workspace.yaml -f ./git-clone/git-clone-adv.yml -f ./git-clone/git-clone-adv-taskRun.yml -n test

