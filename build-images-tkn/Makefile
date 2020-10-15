apply:
	kubectl apply -f sa.yaml -f secret.yaml -f resources/. -f tasks/. -f tasks-runner/. -n sock-shop
delete:
	kubectl delete -f sa.yaml -f secret.yaml -f resources/. -f tasks/. -f tasks-runner/. -n sock-shop
apply-qm:
	kubectl apply -f resources/resource-queue-master.yaml -f tasks/task-queue-master.yaml -f tasks-runner/runner-queue-master.yaml -n sock-shop
delete-qm:
	kubectl delete -f resources/resource-queue-master.yaml -f tasks/task-queue-master.yaml -f tasks-runner/runner-queue-master.yaml -n sock-shop
apply-udb:
	kubectl apply -f resources/resource-user-db.yaml -f tasks/task-user-db.yaml -f tasks-runner/runner-user-db.yaml -n sock-shop
delete-udb:
	kubectl delete -f resources/resource-user-db.yaml -f tasks/task-user-db.yaml -f tasks-runner/runner-user-db.yaml -n sock-shop
list:
	tkn tr list -n sock-shop
logs:
	tkn tr logs -f -n sock-shop
