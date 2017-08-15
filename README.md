# geohashbench
Benchmarks to compare golang geohash implementations.

String geohash encoding:

```
BenchmarkMmcloughlinEncodeString-4    	20000000	        74.4 ns/op
BenchmarkPierrreEncodeString-4        	 2000000	       624 ns/op
BenchmarkCodeforEncodeString-4        	 2000000	       705 ns/op
BenchmarkFanixkEncodeString-4         	 2000000	       762 ns/op
BenchmarkTomihiltunenEncodeString-4   	 2000000	       782 ns/op
BenchmarkGansiduiEncodeString-4       	 2000000	       790 ns/op
BenchmarkBroadyEncodeString-4         	 1000000	      1491 ns/op
```

Integer geohash encoding:

```
BenchmarkMmcloughlinEncodeInt-4   	100000000	        12.5 ns/op
BenchmarkBsmEncodeInt-4           	100000000	        16.4 ns/op
BenchmarkEzzkoramEncodeInt-4      	30000000	        42.8 ns/op
BenchmarkCorscEncodeInt52-4       	 3000000	       496 ns/op
```
