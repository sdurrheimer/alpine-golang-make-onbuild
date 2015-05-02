GOPKG := go$(GO_VERSION).src.tar.gz

PATCHDIR := /gopatch
PATCH := no-werror.patch no-pic.patch no-longjmp-redefine.patch

dowload-golang:
	mkdir -p $(GOROOT)
	curl -L $(GOURL)/$(GOPKG) | tar -C $(GOROOT) --strip 1 -xz

$(PATCH):
	cd $(GOROOT) && patch -p1 -i $(PATCHDIR)/$@ || return 1

$(GOCC): dowload-golang $(PATCH)
	cd "$(GOROOT)/src" && unset CC && GOROOT=$(GOROOT) GOPATH=$(GOPATH) GOARCH=$(GOARCH) ./make.bash || return 1
