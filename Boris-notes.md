# How to repeat Experiment3

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
- opam install ppx_deriving_yojson

## Building Ott

- convince yourself `make` successfully builds `master` (means you have a sane OCaml)
- switch to `experiment3`, then `make`
- `bin/ott -i minimal.ott -o minimal.JSON`
- try loading the resulting minimal.JSON in Smalltalk
`vim minimalScript.sml` and remove everything down from `====== END OF JSON =======`; save as `minimal.json`
