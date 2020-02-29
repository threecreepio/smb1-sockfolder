AS = ca65
CC = cc65
LD = ld65

.PHONY: clean

%.o: %.s
	$(AS) $(AFLAGS) $< -o $@

main-ntsc.nes: layout main-ntsc.o
	$(LD) -C $^ -o $@

main-pal.nes: layout main-pal.o
	$(LD) -C $^ -o $@

clean:
	rm -f main-*.nes *.o
