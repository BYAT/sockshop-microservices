apply:
	kubectl apply -f ../resources/github-secrets.yaml -f ../secret.yaml -f ../sa.yaml -f ../role.yaml -f ../resources/resource-test.yaml -f ./test-task.yaml -f ./pipeline-test.yaml -f ./pr.yaml -n test 
delete: 
	kubectl delete -f ./test-task.yaml -f ./pipeline-test.yaml -f ./pr.yaml  -n test
get:
	kubectl get --all   -n test
list:
	tkn pr list 	 -n test
logs: 
	tkn pr logs -f  -n test
