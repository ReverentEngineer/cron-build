ifndef (PREFIX)
	PREFIX := /usr/local
endif

install: ./bin/cron-build
	cp ./cron-build $(PREFIX)/bin
	mkdir -p $(PREFIX)/share/man/man1
	pod2man cron-build $(PREFIX)/share/man/man1/cron-build.1
