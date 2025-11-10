let show_version = ref false

let print_version () =
  Format.printf
    "TODO, show executable name + %s + contributors and others info"
    ( match Build_info.V1.version () with
    | None -> "N/A"
    | Some version -> Build_info.V1.Version.to_string version )
