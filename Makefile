.DEFAULT_GOAL := help

test:
	mkdir -p out
	kicad-cli pcb drc \
		--output out/drc.rpt \
		--severity-error \
		--severity-warning \
		--exit-code-violations \
		pedalboard-hw.kicad_pcb


help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
