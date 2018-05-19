# geohashbench
Benchmarks to compare golang geohash implementations.

## Results

### String Encoding

```
name                        time/op
MmcloughlinEncodeString-4   60.9ns ± 0%
PierrreEncodeString-4        485ns ± 0%
CodeforEncodeString-4        500ns ± 0%
GansiduiEncodeString-4       526ns ± 0%
FanixkEncodeString-4         557ns ± 0%
TomihiltunenEncodeString-4   564ns ± 0%
TidwallEncodeString-4        636ns ± 0%
BroadyEncodeString-4        1.07µs ± 0%
```

### Integer Encoding

```
name                    time/op
MmcloughlinEncodeInt-4  11.1ns ± 0%
BsmEncodeInt-4          14.1ns ± 0%
EzzkoramEncodeInt-4     38.5ns ± 0%
CorscEncodeInt52-4       380ns ± 0%
```

### String Decoding

```
name                        time/op
MmcloughlinDecodeString-4   152ns ± 0%
PierrreDecodeString-4       337ns ± 0%
BroadyDecodeString-4        445ns ± 0%
TidwallDecodeString-4       472ns ± 0%
CodeforDecodeString-4       484ns ± 0%
TomihiltunenDecodeString-4  515ns ± 0%
FanixkDecodeString-4        662ns ± 0%
```

### Meta

```
$ date
Sat May 19 16:24:38 PDT 2018
$ go version
go version go1.9.2 darwin/amd64
$ sysctl -n machdep.cpu.brand_string
Intel(R) Core(TM) i7-7567U CPU @ 3.50GHz
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
* [tidwall/tile38/pkg/geojson/geohash](https://github.com/tidwall/tile38/pkg/geojson/geohash) ([godoc](https://godoc.org/github.com/tidwall/tile38/pkg/geojson/geohash))