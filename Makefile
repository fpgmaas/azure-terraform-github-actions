.PHONY: fmt
fmt: ## Run terraform fmt
	@terraform -chdir=terraform fmt

.PHONY: val
val: ## Run terraform validate
	@terraform -chdir=terraform validate

.PHONY: check
check: fmt val ## Run terraform fmt and validate

.PHONY: init
init: # Run terraform init without the backend, for local installation.
	@terraform -chdir=terraform init -backend=false

.PHONY: upgrade
upgrade: # Run terraform init -upgrade without the backend, for local installation.
	@terraform -chdir=terraform init -backend=false -upgrade

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help