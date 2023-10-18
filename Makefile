.DEFAULT_GOAL := help

update-led-ring: ## update 3D model for led-ring
	cp ../pedalboard-led-ring-site/latest/3D/pedalboard-led-ring-3D.step 3d-models/

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
