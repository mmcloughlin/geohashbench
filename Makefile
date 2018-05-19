all: benchmarks_test.go README.md

benchmarks_test.go: make_benchmarks.py packages.yaml
	python $< packages.yaml > $@
	goimports -w $@
	go list -f '{{ join .TestImports  "\n"}}' | xargs go get -u -v

results/%.out: benchmarks_test.go
	mkdir -p results
	go test -bench $* | grep Benchmark | tee | sort -k3,3n > $@

%.stat: %.out
	benchstat $< > $@

README.md: README.md.j2 packages.yaml meta.py results/EncodeString.stat results/EncodeInt.stat results/DecodeString.stat
	python meta.py > results/meta.out
	j2 --format=yaml $< packages.yaml > $@

deps:
	pip install pyyaml j2cli
	go get -u golang.org/x/perf/cmd/benchstat

clean:
	$(RM) benchmarks_test.go README.md
	$(RM) -r results
