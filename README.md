
# WIP

## Details

Alpine edge based image for Golang 1.4.2.

## Usage example

In your `Makefile`
```
TARGET := graphite_exporter

+ your build process
```

### Dockerfile
```
FROM sdurrheimer/alpine-golang-onbuild
MAINTAINER The Prometheus Authors <prometheus-developers@googlegroups.com>

EXPOSE  9108 9109
CMD     [ "-logtostderr" ]
```
