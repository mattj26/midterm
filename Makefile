all: midterm2010

midterm2010: midterm2010.ml
	ocamlbuild -use-ocamlfind midterm2010.byte
