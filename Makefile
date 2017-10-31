.PHONY: image

IMAGE_NAME ?= codeclimate/codeclimate-pep8

image:
	docker build --rm -t $(IMAGE_NAME) .
