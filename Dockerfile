FROM golang

COPY . /go/src/github.com/TheClowder/tamaraw

WorkDir  /go/src/github.com/TheClowder/tamaraw

RUN go get -v

RUN go install

EXPOSE 8090

CMD ["/go/bin/tamaraw"]
