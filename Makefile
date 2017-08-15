all: benchmarks_test.go

benchmarks_test.go: make_benchmarks.py packages.yaml
	python $< packages.yaml > $@
	goimports -w $@
