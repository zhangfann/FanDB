CXX = g++ 
PROG= db

CXXFLAGS += -g -std=c++11
CPPFLAGS += -I. 

LDLIBS=
LDFLAGS +=  $(LDLIBS)

all: $(PROG)

SRCS= db.cpp
# OBJS=$(subst .cc,.o, $(subst .cpp,.o, $(SRCS)))
OBJS= db.o
$(PROG): $(OBJS)
	$(CXX) $^ $(LDFLAGS) -o $@

clean:
	rm -f *.o kv
