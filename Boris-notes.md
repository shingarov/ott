# How to repeat Experiment5

## Installing Prerequisites

- opam init ; restart shell so it picks up opampampam
- opam install dune
- opam install linenoise
- opam install zarith
- opam install menhir
- opam install ocamlbuild
- opam install pprint
- opam install yojson
- opam install ocamlgraph
- opam install ppx_import
- opam install ppx_deriving_json

## Building Ott

- checkout virgin master
- convince yourself `make` successfully builds `master` (means you have a sane OCaml environment)
- switch to `experiment5`, then `make`
- `bin/ott -i tests/test10.ott -o test10.JSON`
- try loading the resulting `test10.JSON` in Smalltalk (`OttTest>>test10`)
