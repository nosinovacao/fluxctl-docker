default: docker_build

DOCKER_IMAGE ?= ghcr.io/nosinovacao/fluxctl
GIT_BRANCH ?= $(shell git rev-parse --abbrev-ref HEAD)

ifeq ($(GIT_BRANCH), master)
	DOCKER_TAG = latest
else
	DOCKER_TAG = $(GIT_BRANCH)
endif

docker_build:
	@docker build \
	  -t $(DOCKER_IMAGE):$(DOCKER_TAG) .
docker_push:
	# Push to DockerHub
	docker push $(DOCKER_IMAGE):$(DOCKER_TAG)

test:
	docker run $(DOCKER_IMAGE):$(DOCKER_TAG) version --client