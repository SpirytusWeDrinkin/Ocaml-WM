open Version_pkg

let prog_name = Filename.basename Sys.argv.(0)

let usage_msg = Printf.sprintf "Usage: %s [options]" prog_name

let options =
  [("--version", Arg.Set Version.show_version, "Display the program version")]

let reject_positional_arg arg =
  Logs.err (fun m ->
      m "Error: Unexpected argument `%s`. It only accepts options." arg ) ;
  prerr_endline "" ;
  Arg.usage options usage_msg ;
  exit 1

let () =
  Logs.set_reporter (Logs_fmt.reporter ()) ;
  Logs.set_level (Some Logs.Info) ;
  ( try Arg.parse_argv Sys.argv options reject_positional_arg usage_msg with
  | Arg.Bad msg ->
      Logs.err (fun m -> m "Argument parsing error: %s" msg) ;
      exit 1
  | Arg.Help msg -> Format.printf "%s" msg ; exit 0 ) ;
  if !Version.show_version then (Version.print_version () ; exit 0)
