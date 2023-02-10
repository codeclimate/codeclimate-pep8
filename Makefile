.PHONY: image release

IMAGE_NAME ?= codeclimate/codeclimate-pep8
RELEASE_REGISTRY ?= codeclimate
RELEASE_TAG ?= latest

image:
	docker build --rm -t $(IMAGE_NAME) .

release:
	docker tag $(IMAGE_NAME) $(RELEASE_REGISTRY)/codeclimate-pep8:$(RELEASE_TAG)
	docker push $(RELEASE_REGISTRY)/codeclimate-pep8:$(RELEASE_TAG)
