all: midterm2010

clean:
	rm *.cmi *.cmo debugThis.byte

debug: debugThis.ml
	ocamlc -g -o debugThis.byte debugThis.ml

midterm2010: midterm2010.ml
	ocamlbuild -use-ocamlfind midterm2010.byte
