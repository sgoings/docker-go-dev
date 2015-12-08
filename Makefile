VERSION := $(shell git describe --tags --exact-match 2>/dev/null || echo latest)
PROJECT_NAME := go-dev

include info.mk docker.mk

.PHONY: build
build: docker-build

.PHONY: push
push: docker-push
