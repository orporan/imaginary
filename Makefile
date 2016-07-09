OK_COLOR=\033[32;01m
NO_COLOR=\033[0m

build:
	@echo "$(OK_COLOR)==> Compiling binary$(NO_COLOR)"
	go build -o bin/imaginary

test:
	go test

install:
	go get -u .

benchmark: build
	bash benchmark.sh

docker-build:
	docker build --no-cache=true -t h2non/imaginary:$(VERSION) .

docker-push:
	docker push h2non/imaginary:$(VERSION)

docker: docker-build docker-push

.PHONY: test benchmark docker-build docker-push docker
