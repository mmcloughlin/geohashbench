# geohashbench
Benchmarks to compare golang geohash implementations.

## Results

### String Encoding

```
BenchmarkMmcloughlinEncodeString-4    	20000000	        80.6 ns/op
BenchmarkPierrreEncodeString-4        	 2000000	       642 ns/op
BenchmarkCodeforEncodeString-4        	 2000000	       706 ns/op
BenchmarkFanixkEncodeString-4         	 2000000	       772 ns/op
BenchmarkTomihiltunenEncodeString-4   	 2000000	       787 ns/op
BenchmarkGansiduiEncodeString-4       	 2000000	       815 ns/op
BenchmarkBroadyEncodeString-4         	 1000000	      1376 ns/op
```

### Integer Encoding

```
BenchmarkMmcloughlinEncodeInt-4   	100000000	        12.6 ns/op
BenchmarkBsmEncodeInt-4           	100000000	        16.5 ns/op
BenchmarkEzzkoramEncodeInt-4      	30000000	        45.0 ns/op
BenchmarkCorscEncodeInt52-4       	 3000000	       499 ns/op
```

## Packages Tested

* [mmcloughlin/geohash](https://github.com/mmcloughlin/geohash)
* [TomiHiltunen/geohash-golang](https://github.com/TomiHiltunen/geohash-golang)
* [gansidui/geohash](https://github.com/gansidui/geohash)
* [pierrre/geohash](https://github.com/pierrre/geohash)
* [broady/gogeohash](https://github.com/broady/gogeohash)
* [bsm/geohashi](https://github.com/bsm/geohashi)
* [corsc/go-geohash](https://github.com/corsc/go-geohash)
* [ezzkoram/geohash](https://github.com/ezzkoram/geohash)
* [Codefor/geohash](https://github.com/Codefor/geohash)
* [fanixk/geohash](https://github.com/fanixk/geohash)