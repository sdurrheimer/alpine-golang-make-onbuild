# Alpine Golang Make Onbuild

## Details

Alpine based image for Golang with glibc. This is a onbuild image using make.

## Usage example

In your `Makefile`
```
VERSION  := 0.1.0
TARGET   := your_exporter

include Makefile.COMMON
```

### Dockerfile
```
FROM sdurrheimer/alpine-golang-make-onbuild
MAINTAINER The Prometheus Authors <prometheus-developers@googlegroups.com>

EXPOSE  91xx
```
