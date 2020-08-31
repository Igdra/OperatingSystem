# Makefile for JamesM's kernel tutorials

SOURCES=boot.o

CFLAGS=
# LD linker flags
# linker script link.ld
LDFLAGS=-Tlink.ld
# assembler flags
# assembling with nasm
# into ELF binary
ASFLAGS=-felf

all: $(SOURCES) link

clean:
    -rm *.o kernel

link:
    ld $(LDFLAGS) -o kernel $(SOURCES)

# what is that $< at the end there?
.s.o:
    nasm $(ASFLAGS) $<
