open Str

let read_file filename =
  let lines = ref [] in
  let chan = open_in filename in
  try
    while true; do
      lines := input_line chan :: !lines
    done; !lines
  with End_of_file ->
    close_in chan;
    List.rev !lines

let contains s1 s2 =
  let re = regexp_string s2 in
  try
    ignore @@ search_forward re s1 0;
    true
  with Not_found -> false

let replacer_factory () =
  let cCount = ref 0 and jCount = ref 0 and wCount = ref 0 in
  fun e -> begin
      let cPattern = regexp {|^\(| \[C\)x|} in
      let jPattern = regexp {|^\(| \[J\)x|} in
      let wPattern = regexp {|^\(| \[W\)x|} in
      try
        ignore @@ search_forward cPattern e 0;
        fun () -> begin
            cCount := !cCount + 1;
            replace_first cPattern ("\\1" ^ string_of_int !cCount) e
          end
      with Not_found -> try
          ignore @@ search_forward jPattern e 0;
          fun () -> begin
              jCount := !jCount + 1;
              replace_first jPattern ("\\1" ^ string_of_int !jCount) e
            end
        with Not_found -> try
            ignore @@ search_forward wPattern e 0;
            fun () -> begin
                wCount := !wCount + 1;
                replace_first wPattern ("\\1" ^ string_of_int !wCount) e
            end
        with Not_found ->
        fun () -> e
    end ()

let tag_entries l =
  let replacer = replacer_factory () in
  let rl = List.rev l in
  List.rev @@ List.map replacer rl

let () =
  if Array.length Sys.argv != 2 then
    raise @@ Failure ("usage: " ^ Sys.argv.(0) ^ " <filename>")
  else 
    let lines = read_file Sys.argv.(1) in
    ignore @@ List.map print_endline @@ tag_entries lines
