open            Simple_ast
module Lexer  = Simple_lexer
module Parser = Simple_parser
module PP     = Simple_parser_pp

let process (line : string) =
  let linebuf = Lexing.from_string line in
  try
    (* Run the parser on this line of input. *)
    let t = (Parser.exp_start Lexer.token linebuf) in
    (* and pp the original and the parsed result *)
    Printf.printf "ok:%s\n" line;
    Printf.printf "   "; PPrint.ToChannel.compact stdout (PP.pp_raw_exp t); Printf.printf "\n";
    Printf.printf "   "; PPrint.ToChannel.compact stdout (PP.pp_exp t); Printf.printf "\n"

  with
  | Lexer.Error msg ->
      Printf.fprintf stdout "%s" msg
  | Parser.Error ->
      Printf.fprintf stdout "%s^\n%s^\nAt offset %d: syntax error.\n" line(String.make (Lexing.lexeme_start linebuf) ' ') (Lexing.lexeme_start linebuf)

let rec foo () =
  let s = read_line () in
  process s; flush stdout;
  foo ()

let () = foo ()


