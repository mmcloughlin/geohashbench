package geohashbench

import "math/rand"

func RandomPoint() (lat, lng float64) {
	lat = -90 + 180*rand.Float64()
	lng = -180 + 360*rand.Float64()
	return
}

func RandomPoints(n int) [][2]float64 {
	points := make([][2]float64, n)
	for i := 0; i < n; i++ {
		lat, lng := RandomPoint()
		points[i] = [2]float64{lat, lng}
	}
	return points
}

func RandomStringGeohash() string {
	const alphabet = "0123456789bcdefghjkmnpqrstuvwxyz"
	chars := [12]byte{}
	for i := 0; i < 12; i++ {
		chars[i] = alphabet[rand.Intn(32)]
	}
	return string(chars[:])
}

func RandomStringGeohashes(n int) []string {
	geohashes := make([]string, n)
	for i := 0; i < n; i++ {
		geohashes[i] = RandomStringGeohash()
	}
	return geohashes
}
