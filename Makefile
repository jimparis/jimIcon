ICO = $(wildcard *.ico)
PNG = $(ICO:=.png)

.PHONY: all clean
all: clean $(PNG)

foo:
	rm -f *.ico.png

%.ico.png: %.ico
	php test.php $<
