.ONESHELL:
SHELL := /bin/bash
OS := $(shell uname)

install-dev: create-namespace-dev install-flux-dev install-secret-dev

include scripts/*.mk

.PHONY: install-dev