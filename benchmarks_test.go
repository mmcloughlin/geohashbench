package geohashbench

import (
	"testing"
	mmcloughlin "github.com/mmcloughlin/geohash"
	tomihiltunen "github.com/TomiHiltunen/geohash-golang"
)

func BenchmarkMmcloughlinEncode(b *testing.B) {
    points := RandomPoints(b.N)
    b.ResetTimer()
    for i := 0; i < b.N; i++ {
        mmcloughlin.Encode(points[i][0], points[i][1])
    }
}


func BenchmarkMmcloughlinEncodeInt(b *testing.B) {
    points := RandomPoints(b.N)
    b.ResetTimer()
    for i := 0; i < b.N; i++ {
        mmcloughlin.EncodeInt(points[i][0], points[i][1])
    }
}


func BenchmarkTomihiltunenEncode(b *testing.B) {
    points := RandomPoints(b.N)
    b.ResetTimer()
    for i := 0; i < b.N; i++ {
        tomihiltunen.Encode(points[i][0], points[i][1])
    }
}

