SHELL=/bin/bash

build: ## Build Docker image and push to Docker Cloud.
	docker build -t bhomnick/python-multi .
	docker push bhomnick/python-multi
help: ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
