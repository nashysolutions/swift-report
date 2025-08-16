PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
TARGET = swift-report

.PHONY: build install uninstall clean

build:
	swift build -c release

install: build
	mkdir -p $(BINDIR)
	cp .build/release/$(TARGET) $(BINDIR)/$(TARGET)

uninstall:
	rm -f $(BINDIR)/$(TARGET)

clean:
	swift package clean
