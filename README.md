# geohashbench
Benchmarks to compare golang geohash implementations.

## Results

### String Encoding

```
name                        time/op
MmcloughlinEncodeString-4   76.8ns ± 0%
PierrreEncodeString-4        659ns ± 0%
CodeforEncodeString-4        696ns ± 0%
FanixkEncodeString-4         764ns ± 0%
TomihiltunenEncodeString-4   786ns ± 0%
GansiduiEncodeString-4       817ns ± 0%
BroadyEncodeString-4        1.36µs ± 0%
```

### Integer Encoding

```
name                    time/op
MmcloughlinEncodeInt-4  13.4ns ± 0%
BsmEncodeInt-4          17.3ns ± 0%
EzzkoramEncodeInt-4     43.5ns ± 0%
CorscEncodeInt52-4       520ns ± 0%
```

### String Decoding

```
name                        time/op
MmcloughlinDecodeString-4   195ns ± 0%
PierrreDecodeString-4       352ns ± 0%
CodeforDecodeString-4       444ns ± 0%
BroadyDecodeString-4        529ns ± 0%
TomihiltunenDecodeString-4  608ns ± 0%
FanixkDecodeString-4        757ns ± 0%
```

### Meta

```
$ date
Tue Aug 15 10:50:04 PDT 2017
$ go version
go version go1.8.1 darwin/amd64
$ sysctl -n machdep.cpu.brand_string
Intel(R) Core(TM) i7-6660U CPU @ 2.40GHz
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