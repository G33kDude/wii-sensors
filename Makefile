CFLAGS = -Wall -Wextra -pedantic
LDFLAGS = -lbluetooth -lcwiid

all: bal mplog wibble

bal: bal.c
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ $<

mplog: mplog.c
	$(CC) ${CFLAGS} ${LDFLAGS} -lm -o $@ $<

wibble: wibble.c
	$(CC) ${CFLAGS} ${LDFLAGS} -lm -o $@ $<

clean:
	rm -f bal mplog wibble

.PHONY: all clean