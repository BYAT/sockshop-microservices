apply:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/.  -f tasks/.  -f pipelines/. -f pr/. -n sock-shop
delete:
	kubectl delete -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/. -f tasks/. -f pipelines/. -f pr/. -f services/. -n sock-shop
list:
	tkn tr list -n sock-shop
logs:
	tkn tr logs -f -n sock-shop
apply-front-end:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-front-end.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -n sock-shop
delete-front-end:
	 kubectl delete -f ../build-images-tkn/resources/resource-front-end.yaml -f tasks/front-end-task.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -f services/front-end-dep.yaml -f services/front-end-svc.yaml -n sock-shop
get:
	kubectl get all -n sock-shop
apply-queue-master:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-queue-master.yaml -f tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -n sock-shop
delete-queue-master:
	kubectl delete -f tasks/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -f services/queue-master-svc.yaml -f services/queue-master-dep.yaml -f services/rabbitmq-dep.yaml -f services/rabbitmq-svc.yaml -n sock-shop
apply-user:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-user.yaml -f ../build-images-tkn/resources/resource-user-db.yaml -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml -n sock-shop
delete-user:
	kubectl delete -f tasks/user.yaml -f pipelines/user.yaml -f pr/user.yaml -f services/user-svc.yaml -f services/user-dep.yaml -f services/user-db-dep.yaml -f services/user-db-svc.yaml -n sock-shop
