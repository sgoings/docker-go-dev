MAKEUP_VERSION := master
MAKEUP_DIR := .makeup

#CREATE_DIR := $(shell mkdir -p .makeup)
INSTALL_MAKEUP := $(shell git submodule add -b $(MAKEUP_VERSION) -f git@github.com:sgoings/makeup.git .makeup 2> /dev/null)
SUBMODULE_UPDATE := $(shell git submodule update --init)
