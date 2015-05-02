FROM alpine:edge
MAINTAINER The Prometheus Authors <prometheus-developers@googlegroups.com>

RUN addgroup -S golang && adduser -S -G golang golang

COPY go-build /bin/go-build
COPY go-run /bin/go-run
COPY helper.mak /bin/helper.mak
COPY build_go_src.mak /bin/build_go_src.mak
COPY gopatch /gopatch 

RUN mkdir -p /app
WORKDIR /app

ONBUILD COPY    . /app
ONBUILD RUN     /bin/go-build
ONBUILD WORKDIR /bin
ONBUILD USER    golang

ENTRYPOINT  ["/bin/go-run"]
