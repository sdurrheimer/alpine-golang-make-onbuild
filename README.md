
# WIP

## Details

Alpine based image for Golang.

## Usage example

In your `Makefile`
```
TARGET := graphite_exporter

+ your build process
```

### Dockerfile
```
FROM sdurrheimer/alpine-golang-make-onbuild
MAINTAINER The Prometheus Authors <prometheus-developers@googlegroups.com>

EXPOSE  9108 9109
```
