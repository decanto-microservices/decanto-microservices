SHELL=/bin/sh

zone:
	cd decanto-zone-service && go run main.go

winefamily:
	cd decanto-winefamily-service && go run main.go

food:
	cd decanto-food-service && go run main.go

pairing:
	cd decanto-pairing-service && go run main.go

run: zone winefamily food pairing

# ----- Build services -----

build-zone:
	cd decanto-zone-service && docker build -t decanto-zone-service .

build-food:
	cd decanto-food-service && docker build -t decanto-food-service .

build-winefamily:
	cd decanto-winefamily-service && docker build -t decanto-winefamily-service .

build-pairing:
	cd decanto-pairing-service && docker build -t decanto-pairing-service .

build: build-zone build-food build-winefamily build-pairing