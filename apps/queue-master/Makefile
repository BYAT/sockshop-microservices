build: 
	DOCKER_BUILDKIT=1 docker build -t bashayr/queue-master -f docker/queue-master/Dockerfile .
run: 
	docker run -it --rm -p 8080:80 bashayr/queue-master
docker-push:
	docker push bashayr/queue-master
