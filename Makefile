all: benchmarks_test.go README.md

benchmarks_test.go: make_benchmarks.py packages.yaml
	python $< packages.yaml > $@
	goimports -w $@

results/%.out: benchmarks_test.go
	go test -bench $* | grep Benchmark | tee | sort -k3,3n > $@

%.stat: %.out
	benchstat $< > $@

README.md: README.md.j2 packages.yaml meta.py results/EncodeString.stat results/EncodeInt.stat results/DecodeString.stat
	python meta.py > results/meta.out
	j2 --format=yaml $< packages.yaml > $@
