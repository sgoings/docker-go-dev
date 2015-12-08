PROJECT_NAME := $(shell basename $(shell pwd))

.PHONY: info
info:
	@echo "Version:    ${VERSION}"
	@echo "Image:      ${IMAGE}"
