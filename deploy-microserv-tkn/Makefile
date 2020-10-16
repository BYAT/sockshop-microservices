apply:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/.  -f tasks/. -f tr/. -f pipelines/. -f pr/. -n sock-shop
delete:
	kubectl delete -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/. -f tasks/. -f tr/. -f pipelines/. -f pr/. -n sock-shop
list:
	tkn tr list -n sock-shop
logs:
	tkn tr logs -f -n sock-shop
apply-front-end:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-front-end.yaml -f tasks/front-end-task.yaml -f tr/front-task-run.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -n sock-shop
delete-front-end:
	 kubectl delete -f tasks/front-end-task.yaml -f tr/front-task-run.yaml -f pipelines/front-end-pipeline.yaml -f pr/front-pipelinerun.yaml -n sock-shop
get:
	kubectl get all -n sock-shop
apply-queue-master:
	kubectl apply -f ../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f ../build-images-tkn/resources/resource-queue-master.yaml -f tasks/queue-master.yaml -f tr/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -n sock-shop
delete-queue-master:
	kubectl delete -f tasks/queue-master.yaml -f tr/queue-master.yaml -f pipelines/queue-master.yaml -f pr/queue-master.yaml -n sock-shop
