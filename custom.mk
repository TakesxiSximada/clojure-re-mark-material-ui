PROJECT_NAME := web


.PHONY: help
help:
	unmake $(MAKEFILE_LIST)


.PHONY: project
project:
	lein new re-frame --to-dir $(CURDIR) --force


.PHONY: deps
deps:
	lein deps


.PHONY: web
web:
	rlwrap lein figwheel dev
