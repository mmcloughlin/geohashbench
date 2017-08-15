all: benchmarks_test.go README.md

benchmarks_test.go: make_benchmarks.py packages.yaml
	python $< packages.yaml > $@
	goimports -w $@

results/%.out: benchmarks_test.go
	go test -bench $* | grep Benchmark | tee | sort -k3,3n > $@

README.md: README.md.j2 results/EncodeString.out results/EncodeInt.out
	j2 $< > $@
