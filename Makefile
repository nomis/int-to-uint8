.PHONY: all clean

all: \
	$(patsubst %.cpp,%-Os.o,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-O0.o,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-O1.o,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-O2.o,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-O3.o,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-Os.txt,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-O0.txt,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-O1.txt,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-O2.txt,$(wildcard *.cpp)) \
	$(patsubst %.cpp,%-O3.txt,$(wildcard *.cpp))

clean:
	rm -f -- *.o *.txt

OBJDUMP=objdump

%-Os.o: %.cpp
	$(CXX) -Os -c -o $@ $<

%-O0.o: %.cpp
	$(CXX) -O0 -c -o $@ $<

%-O1.o: %.cpp
	$(CXX) -O1 -c -o $@ $<

%-O2.o: %.cpp
	$(CXX) -O2 -c -o $@ $<

%-O3.o: %.cpp
	$(CXX) -O3 -c -o $@ $<

%.txt: %.o
	($(OBJDUMP) -d $< | grep -vF -- $< > $@) || rm -f -- $@
