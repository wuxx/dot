
dot_file = $(wildcard *.dot)
obj_file = $(dot_file:%.dot=%.svg)

#all: regenerate

./%.svg: ./%.dot
	dot -Tsvg -Kdot -Gcharset=utf-8 $< -o $@

all: $(obj_file)
	
dot:
	@if [ $${#dfile} -eq 0 ]; then \
        echo "please specify the dfile!"; \
        exit 1; \
        else\
        echo ${dfile};\
    fi
	echo $${dfile%%dot}png
	dot -Tpng -Kdot -Gcharset=utf-8 ./${dfile} -o $${dfile%%dot}png

clean:
	rm -f *.png *.svg

