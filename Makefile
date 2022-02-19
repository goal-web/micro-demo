build:
	protoc --micro_out=. --go_out=. *.proto
	go get go-micro.dev/v4
	go get google.golang.org/protobuf

install:
	go get -u google.golang.org/protobuf/proto
	go install github.com/golang/protobuf/protoc-gen-go@latest
	go install go-micro.dev/v4/cmd/protoc-gen-micro@latest