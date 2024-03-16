#
# Build a Menhir parser program from a concrete syntax spec.
#
# We do this in two stages:
#
# 1. We invoke ott to turn simple.ott into ML sources.
# 2. We compile/link the ML_SOURCES and driver 'main.ml'
#    into 'main.byte'.

OTT = ../bin/ott

ML_SOURCES = simple_parser.mly simple_parser_pp.ml simple_lexer.mll simple_ast.ml

all: main.byte

main.byte: $(ML_SOURCES) main.ml
	ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --infer" -package pprint main.byte

$(ML_SOURCES): simple.ott
	$(OTT) -show_sort true -quotient_rules false -i simple.ott -o simple_parser.mly -o simple_lexer.mll -o simple_ast.ml -o simple.JSON
# NB: we can NOT have JSON as separate target, i.e. we need to do Menhir
# and JSON in one ott invocation, lest #select_dep_ts: will crash in Smalltalk,
# because xddep will not contain all the necessary backends.

clean:
	rm -f $(ML_SOURCES) main.byte
	rm -rf _build
	rm -rf simple.JSON

