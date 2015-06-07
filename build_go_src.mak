GOURL := https://golang.org/dl
GOPKG := go$(GO_VERSION).src.tar.gz

PATCHDIR := /gopatch
PATCH := no-werror.patch no-pic.patch no-longjmp-redefine.patch fix-arm-hackery.patch

$(GOCC):
	mkdir -p $(GOROOT)
	curl -L $(GOURL)/$(GOPKG) | tar -C $(GOROOT) --strip 1 -xz
	d $(GOROOT) && patch -p1 -i $(PATCHDIR)/$@ || return 1
	cd "$(GOROOT)/src" && unset CC && GOROOT=$(GOROOT) GOPATH=$(GOPATH) GOARCH=$(GOARCH) ./make.bash || return 1
