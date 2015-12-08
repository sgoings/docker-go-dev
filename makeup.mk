MAKEUP_DIR := .makeup

BOOTSTRAP := $(shell git submodule update --init --recursive)

include $(MAKEUP_DIR)/conventions/deis/main.mk
