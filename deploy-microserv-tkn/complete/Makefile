apply:
	kubectl apply -f ../../build-images-tkn/sa.yaml -f ../../build-images-tkn/secret.yaml -f role.yaml -f workspace.yaml -f task.yaml -f run.yaml -f ../ingress.yaml -n test
delete:
	kubectl delete -f task.yaml -f run.yaml -f complete.yaml -n test
list:
	tkn tr list -n test
logs:
	tkn tr logs -f -n test
get:
	kubectl get all -n test
