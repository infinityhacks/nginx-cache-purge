#!/bin/bash
set -e
export GOPATH=/home/jeichorn/git/nginx-cache-purge
go get github.com/go-fsnotify/fsnotify
go get github.com/koyachi/go-term-ansicolor/ansicolor
go get gopkg.in/redis.v3
cd $GOPATH
cd src/nginxcp
go build -v
cd $GOPATH
cd src/nginx-cache-purge
go install