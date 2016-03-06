
dot_file = $(wildcard *.dot)
obj_file = $(dot_file:%.dot=%.svg)

#all: regenerate

./%.svg: ./%.dot
	dot -Tsvg -Kdot -Gcharset=utf-8 $< -o $@

all: $(obj_file)
	
	



clean:
	rm -f *.png *.svg
