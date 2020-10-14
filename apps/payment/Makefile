NAME = bashayr/payment0
INSTANCE = payment

.PHONY: default copy test

default: test

copy:
	docker create --name $(INSTANCE) $(NAME)-dev
	docker cp $(INSTANCE):/app/main $(shell pwd)/app
	docker rm $(INSTANCE)

release:
	docker build -t $(NAME) -f ./Dockerfile-release .

test:
	GROUP=weaveworksdemos COMMIT=$(COMMIT) bash scripts/build.sh
	./test/test.sh unit.py
	./test/test.sh container.py --tag $(COMMIT)

build:
	docker build -t bashayr/payment .
run: 
	docker run --rm -it -p 8082:80 bashayr/payment
docker-push:
	docker push bashayr/payment
