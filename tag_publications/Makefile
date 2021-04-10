.PHONY: all clean native

OCB_FLAGS = -use-ocamlfind
OCB = ocamlbuild $(OCB_FLAGS)

PROG = tag_publications

all: native

clean:
	$(OCB) -clean

native:
	$(OCB) $(PROG).native
