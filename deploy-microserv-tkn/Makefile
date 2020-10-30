apply:
	kubectl apply -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml  -f tasks/.  -f pipelines/. -f pr/carts.yaml -f pr/catalogue.yaml -f pr/front-pipelinerun.yaml -f pr/orders.yaml -f pr/payment.yaml -f pr/queue-master.yaml -f pr/shipping.yaml -f pr/user.yaml  -n test
apply-all-with-docker: front-end-with-docker carts-with-docker catalogue-with-docker order--with-docker shipping-with-docker payment-with-docker queue-master-with-docker user-with-docker 
delete-all-with-docker: delete-queue-master-with-docker delete-payment-with-docker delete-shipping-with-docker delete-user-with-docker delete-carts-with-docker delete-catalogue-with-docker delete-order--with-docker delete-front-end-with-docker
delete:
	kubectl delete -f tasks/. -f pipelines/. -f pr/. -f services/. -f resources/.  -n test
delete-services-test:
	kubectl delete all -n test
delete-services-prod:
	kubectl delete all -n prod
list:
	tkn pr list -n test
logs:
	tkn pr logs -f -n test 
test-all:
	kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f ingress.yaml -f workspace.yaml  -f resources/resource-user.yaml -f resources/resource-test.yaml -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f tasks/waiting.yaml -f test/test-task.yaml -f pipelines/test-prod.yaml -f pr/test-prod.yaml -n test
delete-test-all:
	kubectl delete -f tasks/waiting.yaml -f test/test-task.yaml  -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f pipelines/test-prod.yaml -f pr/test-prod.yaml -n test
front-end-with-docker:
	kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml -f resources/resource-front-end.yaml -f resources/resource-user.yaml -f resources/resource-test.yaml -f ./build-images-tkn/task-front-end.yaml -f tasks/front-end-task.yaml -f tasks/waiting/fe-waiting.yaml -f test/test-task.yaml  -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -f ./ingress.yaml -n test
delete-front-end-with-docker:
	kubectl delete -f ./build-images-tkn/task-front-end.yaml -f tasks/waiting/fe-waiting.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -n test
carts-with-docker:
	kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml -f resources/resource-carts.yaml -f resources/resource-user.yaml  -f resources/resource-test.yaml  -f ./build-images-tkn/task-carts.yaml  -f tasks/carts.yaml -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f tasks/carts.yaml -f tasks/waiting/carts-waiting.yaml  -f pipelines/carts.yaml  -f pr/carts.yaml   -n test
delete-carts-with-docker:
	kubectl delete -f ./build-images-tkn/task-carts.yaml  -f tasks/carts.yaml -f pipelines/carts.yaml  -f pr/carts.yaml   -n test
catalogue-with-docker:
	kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml -f resources/resource-catalogue-db.yaml -f resources/resource-catalogue.yaml  -f resources/resource-user.yaml  -f resources/resource-test.yaml -f ./build-images-tkn/task-catalogue-db.yaml -f ./build-images-tkn/task-catalogue.yaml -f tasks/catalogue.yaml -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f tasks/waiting/catalogue-waiting.yaml -f pipelines/catalogue.yaml -f pr/catalogue.yaml   -n test
delete-catalogue-with-docker:
	kubectl delete -f ./build-images-tkn/task-catalogue.yaml -f tasks/catalogue.yaml -f pipelines/catalogue.yaml -f pr/catalogue.yaml  -n test
order--with-docker:
	kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml -f resources/resource-order.yaml -f resources/resource-user.yaml  -f resources/resource-test.yaml  -f ./build-images-tkn/task-order.yaml -f tasks/orders.yaml -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f tasks/waiting/orders-waiting.yaml -f pipelines/orders.yaml -f  pr/orders.yaml  -n test
delete-order--with-docker:
	kubectl delete -f ./build-images-tkn/task-order.yaml -f tasks/orders.yaml -f pipelines/orders.yaml -f  pr/orders.yaml  -n test
delete-user-with-docker:
	kubectl delete -f ./build-images-tkn/task-user-db.yaml  -f ./build-images-tkn/task-user.yaml -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml  -n test
user-with-docker:
	 kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml -f resources/resource-user-db.yaml -f resources/resource-user.yaml  -f resources/resource-test.yaml  -f ./build-images-tkn/task-user-db.yaml -f ./build-images-tkn/task-user.yaml -f tasks/user.yaml -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f tasks/waiting/user-waiting.yaml -f pipelines/user.yaml -f pr/user.yaml   -n test
payment-with-docker:
	kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml -f resources/resource-user.yaml -f resources/resource-payment.yaml  -f resources/resource-test.yaml  -f ./build-images-tkn/task-payment.yaml -f  tasks/payment.yaml -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f tasks/waiting/payment-waiting.yaml -f pipelines/payment.yaml -f  pr/payment.yaml   -n test
delete-payment-with-docker:
	kubectl delete -f ./build-images-tkn/task-payment.yaml -f  tasks/payment.yaml -f pipelines/payment.yaml -f  pr/payment.yaml  -n test
shipping-with-docker:
	kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml -f resources/resource-shipping.yaml -f resources/resource-user.yaml  -f resources/resource-test.yaml   -f ./build-images-tkn/task-shipping.yaml -f  tasks/shipping.yaml -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f tasks/waiting/shipping-waiting.yaml -f pipelines/shipping.yaml -f pr/shipping.yaml  -n test
delete-shipping-with-docker:
	kubectl delete -f ./build-images-tkn/task-shipping.yaml -f  tasks/shipping.yaml -f pipelines/shipping.yaml -f pr/shipping.yaml  -n test
queue-master-with-docker:
	kubectl apply  -f ./secret.yaml -f ./sa.yaml -f role-test.yaml -f workspace.yaml -f resources/resource-queue-master.yaml  -f resources/resource-user.yaml -f resources/resource-test.yaml -f ./build-images-tkn/task-queue-master.yaml -f  tasks/queue-master.yaml -f tasks/front-end-task.yaml -f tasks/carts.yaml -f tasks/catalogue.yaml -f tasks/orders.yaml -f tasks/user.yaml -f  tasks/payment.yaml -f  tasks/shipping.yaml -f tasks/queue-master.yaml -f tasks/waiting/queue-master-waiting.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml  -n test
delete-queue-master-with-docker:
	kubectl delete -f ./build-images-tkn/task-queue-master.yaml -f  tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml  -n test
get:
	kubectl get all  -n test
clone:
	kubectl apply -f ./secret.yaml -f ./sa.yaml -f ./role-test.yaml -f workspace.yaml -f ./git-clone/git-clone-adv.yml -f ./git-clone/git-clone-adv-taskRun.yml  -n test
delete-clone:
	kubectl delete -f ./secret.yaml -f ./sa.yaml -f ./role-test.yaml -f workspace.yaml -f ./git-clone/git-clone-adv.yml -f ./git-clone/git-clone-adv-taskRun.yml -n test 

