CPPFLAGS=-g
default: check
debug: a.out
	gdb a.out -ex "set args ${DEBUG_ARGS}"
run: a.out
	./a.out ${RUN_ARGS}
a.out: main.cpp
	$(CC) $(CPPFLAGS) main.cpp
db: a.out
	bash db.sh
check: a.out
	bash check.sh
add:
	bash add.sh
clean:
	$(RM) *.o
	$(RM) a.out
