apply:
	kubectl apply -f sa.yaml -f ../secret.yaml -f role.yaml -f ../resources/github-secrets.yaml -f ../resources/main.yaml -f task.yaml -f run.yaml -f ingress.yaml -n test
delete:
	kubectl delete -f task.yaml -f run.yaml -f complete.yaml -n test
list:
	tkn tr list -n test
logs:
	tkn tr logs -f -n test
get:
	kubectl get all -n test
ingress: 
	kubectl apply -f ingress.yaml
