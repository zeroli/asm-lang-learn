hello: hello.o
	gcc -g -o hello main.c hello.o -no-pie

hello.o: hello4.asm
	nasm -f elf64 -g hello4.asm -o hello.o -l hello.lst
clean:
	rm -rf *.exe *.o
