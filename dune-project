(lang dune 3.7)

(name opam_nix_pins)

(generate_opam_files true)

(source
 (github kentookura/opam-nix-pins))

(authors "Kento Okura")

(maintainers "Kento Okura")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name opam_nix_pins)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends 
   ocaml
   dune
   eio_main
   irmin
   irmin-fs)
 (tags
  (topics "to describe" your project)))
