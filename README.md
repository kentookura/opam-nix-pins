To reproduce issue with opam nix:

```bash
$ nix develop
$ dune build    #fails with a Lwt type error
```

Uncomment lines in opam_nix_pins.opam.template.

```bash
$ dune build    # to regenerate opam file
$ nix develop
$ dune build    # should succeed
```
