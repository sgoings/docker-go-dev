MAKEUP_DIR := .makeup

BOOTSTRAP := $(shell git submodule add git@github.com:sgoings/makeup.git .makeup)

include $(MAKEUP_DIR)/conventions/deis/main.mk
