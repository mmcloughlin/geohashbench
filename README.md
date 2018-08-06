# geohashbench
Benchmarks to compare golang geohash implementations.

## Results

### String Encoding

```
name                        time/op
MmcloughlinEncodeString-4   44.3ns ± 0%
PierrreEncodeString-4        460ns ± 0%
CodeforEncodeString-4        468ns ± 0%
GansiduiEncodeString-4       522ns ± 0%
TomihiltunenEncodeString-4   545ns ± 0%
FanixkEncodeString-4         547ns ± 0%
TidwallEncodeString-4        602ns ± 0%
BroadyEncodeString-4        1.06µs ± 0%
```

### Integer Encoding

```
name                    time/op
MmcloughlinEncodeInt-4  3.74ns ± 0%
BsmEncodeInt-4          15.0ns ± 0%
EzzkoramEncodeInt-4     34.1ns ± 0%
CorscEncodeInt52-4       363ns ± 0%
```

### String Decoding

```
name                        time/op
MmcloughlinDecodeString-4   106ns ± 0%
PierrreDecodeString-4       297ns ± 0%
CodeforDecodeString-4       367ns ± 0%
BroadyDecodeString-4        429ns ± 0%
TidwallDecodeString-4       446ns ± 0%
TomihiltunenDecodeString-4  512ns ± 0%
FanixkDecodeString-4        569ns ± 0%
```

### Meta

```
$ date
Sun Aug  5 21:12:51 PDT 2018
$ go version
go version go1.10.3 darwin/amd64
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