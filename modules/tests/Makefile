.DEFAULT_GOAL := all

.PHONY: smoke
smoke:
	./smoke.sh

.PHONY: smoke-kube
smoke-kube:
	./kubesmokes.sh

.PHONY: kubecats
kubecats:
	./kubecats.sh

.PHONY: brats
brats:
	./brats.sh

.PHONY: test-eirini-persi
test-eirini-persi:
	./eirini_persi.sh

.PHONY: smoke-scf
smoke-scf:
	./smoke_scf.sh

.PHONY: cats
cats:
	./cats.sh

.PHONY: cats-scf
cats-scf:
	./cats_scf.sh

.PHONY: stress-benchmark
stress-benchmark:
	./stress-benchmark.sh

.PHONY: sample
sample:
	./sample.sh

.PHONY: sample-ticking
sample-ticking:
	./sample-ticking.sh

.PHONY: autoscaler
autoscaler:
	./autoscaler.sh

.PHONY: kubecf
kubecf:
	./kubecf-test.sh

# test all the things!
.PHONY: all
# Enable only reliable ones:
all: smoke
