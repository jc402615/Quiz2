CC = g++
CFLAGS = -Wall

all: build doczip

clean:
	-rm *.o
	-rm *.class
	-rm a.out
	-rm mywc
	-rm -r html
	-rm -r latex
	-rm dconfig
	-rm documentation.tar.gz

build: college.o collegemain.o course.o
	$(CC) $(CFLAGS) college.o collegemain.o course.o

college.o: college.cc college.h
	$(CC) $(CFLAGS) -c college.cc

collegemain.o: collegemain.cc
	$(CC) $(CFLAGS) -c collegemain.cc

course.o: course.cc course.h
	$(CC) $(CFLAGS) -c course.cc

doc: college.cc college.h collegemain.cc course.cc course.h node.h tarray.h
	doxygen -g dconfig
	doxygen dconfig




make myexe: college.o collegemain.o course.o
	$(CC) $(CFLAGS) -o myexe.out collegemain.o course.o college.o

make doczip: doc
	tar -zcvf documentation.tar.gz ./html ./latex

	


	
