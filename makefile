CC = clang++
CFLAGS = -pthread -std=c++14

all: Scheduler.o main.o Stopwatch.o
	$(CC) $(CFLAGS) Scheduler.o main.o Stopwatch.o -o sched

%.o : %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm *.o sched

# Targets:
Scheduler: Scheduler.hpp Scheduler.cpp
main.o: main.cpp Stopwatch.h Stopwatch.cpp Scheduler.cpp Scheduler.hpp
Stopwatch.o: Stopwatch.h Stopwatch.cpp
