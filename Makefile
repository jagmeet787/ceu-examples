main: main.c _ceu_app.c
	gcc main.c -o $(basename $(CEUFILE)).exe

_ceu_app.c: main.ceu
	ceu $(CEUFILE)

clean:
	find . -name "*.exe"  | xargs rm -f
	find . -name "_ceu_*" | xargs rm -f

.PHONY: all clean