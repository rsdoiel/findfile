#
# Simple Makefile
#

build:
	go build -o bin/findfile cmds/findfile/findfile.go 
	go build -o bin/finddir	 cmds/finddir/finddir.go 

clean: 
	if [ -d bin ]; then rm -fR bin; fi
	if [ -d dist ]; then rm -fR dist; fi
	if [ -f findfile-binary-release.zip ]; then rm -f findfile-binary-release.zip; fi

install:
	env GOBIN=$(HOME)/bin go install cmds/findfile/findfile.go
	env GOBIN=$(HOME)/bin go install cmds/finddir/finddir.go

release:
	./mk-release.sh
