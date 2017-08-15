# geohashbench
Benchmarks to compare golang geohash implementations.

## Results

### String Encoding

```
BenchmarkMmcloughlinEncodeString-4    	20000000	        78.8 ns/op
BenchmarkPierrreEncodeString-4        	 2000000	       626 ns/op
BenchmarkTomihiltunenEncodeString-4   	 2000000	       782 ns/op
BenchmarkCodeforEncodeString-4        	 2000000	       786 ns/op
BenchmarkGansiduiEncodeString-4       	 2000000	       800 ns/op
BenchmarkFanixkEncodeString-4         	 2000000	       887 ns/op
BenchmarkBroadyEncodeString-4         	 1000000	      1366 ns/op
```

### Integer Encoding

```
BenchmarkMmcloughlinEncodeInt-4   	100000000	        13.0 ns/op
BenchmarkBsmEncodeInt-4           	100000000	        15.7 ns/op
BenchmarkEzzkoramEncodeInt-4      	30000000	        43.4 ns/op
BenchmarkCorscEncodeInt52-4       	 3000000	       496 ns/op
```

### String Decoding

```
BenchmarkMmcloughlinDecodeString-4    	10000000	       186 ns/op
BenchmarkPierrreDecodeString-4        	 5000000	       354 ns/op
BenchmarkCodeforDecodeString-4        	 3000000	       452 ns/op
BenchmarkBroadyDecodeString-4         	 3000000	       526 ns/op
BenchmarkTomihiltunenDecodeString-4   	 3000000	       602 ns/op
BenchmarkFanixkDecodeString-4         	 2000000	       736 ns/op
```

## Packages Tested

* [mmcloughlin/geohash](https://github.com/mmcloughlin/geohash) ([godoc](https://godoc.org/github.com/mmcloughlin/geohash))
* [TomiHiltunen/geohash-golang](https://github.com/TomiHiltunen/geohash-golang) ([godoc](https://godoc.org/github.com/TomiHiltunen/geohash-golang))
* [gansidui/geohash](https://github.com/gansidui/geohash) ([godoc](https://godoc.org/github.com/gansidui/geohash))
* [pierrre/geohash](https://github.com/pierrre/geohash) ([godoc](https://godoc.org/github.com/pierrre/geohash))
* [broady/gogeohash](https://github.com/broady/gogeohash) ([godoc](https://godoc.org/github.com/broady/gogeohash))
* [bsm/geohashi](https://github.com/bsm/geohashi) ([godoc](https://godoc.org/github.com/bsm/geohashi))
* [corsc/go-geohash](https://github.com/corsc/go-geohash) ([godoc](https://godoc.org/github.com/corsc/go-geohash))
* [ezzkoram/geohash](https://github.com/ezzkoram/geohash) ([godoc](https://godoc.org/github.com/ezzkoram/geohash))
* [Codefor/geohash](https://github.com/Codefor/geohash) ([godoc](https://godoc.org/github.com/Codefor/geohash))
* [fanixk/geohash](https://github.com/fanixk/geohash) ([godoc](https://godoc.org/github.com/fanixk/geohash))