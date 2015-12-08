ORG_PREFIX ?= deis

ifeq ($(VERSION),latest)
	ORG_PREFIX := $(ORG_PREFIX)ci/
else
	ORG_PREFIX := $(ORG_PREFIX)/
endif

IMAGE := $(ORG_PREFIX)$(PROJECT_NAME):$(VERSION)

.PHONY: docker-build
docker-build:
	docker build -t $(IMAGE) rootfs

.PHONY: docker-push
docker-push:
	docker tag -f $(IMAGE) $(REGISTRY)$(IMAGE)
	docker push $(REGISTRY)$(IMAGE)
