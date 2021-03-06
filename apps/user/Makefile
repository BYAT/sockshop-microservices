NAME = bashayr/user
DBNAME = bashayr/user-db
INSTANCE = user
TESTDB = user-db-test
OPENAPI = $(INSTANCE)-testopenapi
GROUP = bashayr

TAG=$(TRAVIS_COMMIT)

default: docker

build: build-images run
up: health user
build-images:
	docker build -t bashayr/user-db -f docker/user-db/Dockerfile .
	docker build -t bashayr/user .
run:
	docker run --rm -d -p 8080:80 bashayr/user
	docker run --rm -d -p 27017:27017 bashayr/user-db
health:
	curl localhost:8084/health | jq
user:
	curl localhost:8084/user
bashayr-build:
	docker build -t bashayr/$(INSTANCE)-dev .
	docker build -t bashayr/user-db-test -f docker/user-db/Dockerfile docker/user-db/
	docker build -t bashayr/user-test -f docker/user/Dockerfile-release .
bashayr-test:
		docker run -d --name my$(TESTDB) -h my$(TESTDB) bashayr/$(TESTDB)
	docker run -d --name $(INSTANCE)-dev -p 8084:8084 --link my$(TESTDB) -e MONGO_HOST="my$(TESTDB):27017" bashayr/$(INSTANCE)-dev
bashayr-dockertest: bashayr-build bashayr-test 
	        bash scripts/testcontainer.sh
		docker run -h openapi --rm --name $(OPENAPI) --link user-dev -v $(PWD)/apispec/:/tmp/specs/\
                weaveworksdemos/openapi /tmp/specs/$(INSTANCE).json\
                http://$(INSTANCE)-dev:8084/\
                -f /tmp/specs/hooks.js
		
pre: 
	go get -v github.com/Masterminds/glide

deps: pre
	glide install

rm-deps:
	rm -rf vendor

test:
	@docker build -t $(INSTANCE)-test -f ./Dockerfile-test .
	@docker run --rm -it $(INSTANCE)-test /bin/sh -c 'glide novendor| xargs go test -v'

cover:
	@glide novendor|xargs go test -v -covermode=count

coverprofile:
	go get github.com/modocache/gover
	go test -v -covermode=count -coverprofile=profile.coverprofile
	go test -v -covermode=count -coverprofile=db.coverprofile ./db
	go test -v -covermode=count -coverprofile=mongo.coverprofile ./db/mongodb
	go test -v -covermode=count -coverprofile=api.coverprofile ./api
	go test -v -covermode=count -coverprofile=users.coverprofile ./users
	gover
	mv gover.coverprofile cover.profile
	rm *.coverprofile


dockerdev:
	docker build -t $(INSTANCE)-dev .

dockertestdb:
	docker build -t $(TESTDB) -f docker/user-db/Dockerfile docker/user-db/

dockerruntest: dockertestdb dockerdev
	docker run -d --name my$(TESTDB) -h my$(TESTDB) $(TESTDB)
	docker run -d --name $(INSTANCE)-dev -p 8084:8084 --link my$(TESTDB) -e MONGO_HOST="my$(TESTDB):27017" $(INSTANCE)-dev

docker:
	docker build -t $(NAME) -f docker/user/Dockerfile-release .

dockerlocal:
	docker build -t $(INSTANCE)-local -f docker/user/Dockerfile-release .

dockertravisbuild: 
	docker build -t $(NAME):$(TAG) -f docker/user/Dockerfile-release .
	docker build -t $(DBNAME):$(TAG) -f docker/user-db/Dockerfile docker/user-db/
	if [ -z "$(DOCKER_PASS)" ]; then \
		echo "This is a build triggered by an external PR. Skipping docker push."; \
	else \
		docker login -u $(DOCKER_USER) -p $(DOCKER_PASS); \
		scripts/push.sh; \
	fi

mockservice: 
	docker run -d --name user-mock -h user-mock -v $(PWD)/apispec/mock.json:/data/db.json clue/json-server

dockertest: dockerruntest
	scripts/testcontainer.sh
	docker run -h openapi --rm --name $(OPENAPI) --link user-dev -v $(PWD)/apispec/:/tmp/specs/\
		weaveworksdemos/openapi /tmp/specs/$(INSTANCE).json\
		http://$(INSTANCE)-dev:8084/\
		-f /tmp/specs/hooks.js
	 $(MAKE) cleandocker

cleandocker:
	-docker rm -f my$(TESTDB)
	-docker rm -f $(INSTANCE)-dev
	-docker rm -f $(OPENAPI)
	-docker rm -f user-mock

clean: cleandocker 
	rm -rf bin
	rm -rf docker/user/bin
	rm -rf vendor
