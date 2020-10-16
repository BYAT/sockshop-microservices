apply:
	kubectl apply -f ../../build-images-tkn/sa.yaml -f ../../build-images-tkn/secret.yaml -f role.yaml -f workspace.yaml -f task.yaml -f run.yaml -n sock-shop
delete:
	kubectl delete -f ../../build-images-tkn/secret.yaml -f ../../build-images-tkn/sa.yaml -f role.yaml -f workspace.yaml -f task.yaml -f run.yaml -n sock-shop
list:
	tkn tr list -n sock-shop
logs:
	tkn tr logs -f -n sock-shop
get:
	kubectl get all -n sock-shop
