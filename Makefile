DIR = $(or $(and $(wildcard Dockerfile), `basename $$(pwd)`), $(error Run make in a directory with a Dockerfile))
IMG = cciocov/$(DIR)

DATETIME := $(shell date -u +"%Y%m%d%H%M%S")

build:
	docker build -t $(IMG):$(DATETIME) -t $(IMG):latest .

push: build
	docker push $(IMG):$(DATETIME)
	docker push $(IMG):latest
