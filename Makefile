ifndef $(GOPATH)
    GOPATH=$(shell go env GOPATH)
    export GOPATH
endif

all: phoney

phoney:
	echo "nothing"
	echo $(GOPATH)

nyaa-grpc:
	protoc -I. -I$(GOPATH)/src -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis --go_out=plugins=grpc:. proto/nyaa/nyaa.proto

build-nyaa:
	go build -o bin/nyaa.exe cmd/nyaa/nyaa.go

clean:
	# TODO