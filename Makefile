ICO = $(wildcard *.ico)
PNG = $(ICO:=.png)

.PHONY: all foo
all: foo $(PNG)

foo:
	rm -f *.png

%.ico.png: %.ico
	php test.php $<
