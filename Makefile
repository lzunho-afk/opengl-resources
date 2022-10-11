CXX=g++
CXXFLAGS=-Wall
ASBFLAGS=-c $(CXXFLAGS)
LIBS=-lGL -lglfw -lGLEW
BINARY_DIR=./examples_out

$(BINARY_DIR)/simple_window: simple_window/simple_window.o
	@mkdir -p $(@D)
	$(CXX) -o $@ $^ $(CXXFLAGS) $(LIBS)

simple_window/simple_window.o: simple_window/simple_window.cpp
	$(CXX) -o $@ $< $(ASBFLAGS) $(LIBS)

clean:
	rm -rf ./*/*.o *~ ./*/*~

uninstall:
	rm -rf $(BINARY_DIR)
