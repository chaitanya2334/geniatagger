CFLAGS = -O2 -DNDEBUG -static-libstdc++ -static-libgcc -static -lpthread
#CFLAGS = -pg -O5
#CFLAGS = -static-libstdc++
CPP = i686-w64-mingw32-g++
#CPP = g++
OBJS = main.o maxent.o tokenize.o bidir.o morph.o chunking.o namedentity.o

geniatagger: $(OBJS)
	$(CPP) -o geniatagger.exe $(CFLAGS) $(OBJS)
clean:
	/bin/rm -r -f $(OBJS) geniatagger *.o *~ *.flc
.cpp.o:
	$(CPP) -c $(CFLAGS) $<