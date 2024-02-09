#!/bin/sh

../bin/ott -show_sort true -quotient_rules false -i simple.ott -o simple_parser.mly -o simple_lexer.mll -o simple_ast.ml -o simple.JSON

ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --infer" -package pprint main.byte

