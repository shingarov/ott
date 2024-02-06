#!/bin/sh

../bin/ott -show_sort true -quotient_rules false -i test10menhir.ott -o test10menhir_parser.mly -o test10menhir_lexer.mll -o test10menhir_ast.ml

ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --infer" -package pprint main.byte
