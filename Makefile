.PHONY: dev

init:
	go mod vendor

dev:
	go run cmd/server/main.go

build-docker:
	docker build -t liulo-be:latest .

test:
	go test -cover ./...