(lang dune 3.20)

(name ocaml-wm)

(version 0.1.0)

(generate_opam_files true)

(source
 (github SpirytusWeDrinkin/Ocaml-WM))

(authors "Gurvan Biguet-Kerloc'h <>" "Lenny Chiadmi-Delage <>" "Abel Chartier <abel.chartier@gmail.com")

(maintainers "Maintainer Name <maintainer@example.com>")

(license MIT)

(documentation https://github.com/SpirytusWeDrinkin/Ocaml-WM)

(package
 (name ocaml-wm)
 (synopsis "Wayland compositor in OCaml")
 (description "This is intended to be a minimal tiling window manager written in OCaml.")
 (depends ocaml)
 (tags
  (wayland compositor "window-manager" tiling graphics wlroots)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
