module Store = Irmin_fs_unix.KV.Make (Irmin.Contents.String)

let test () =
  let config = Irmin_fs.config "store" in
  let repo = Store.Repo.v config in
  let main = Store.main repo in
  let info () = Store.Info.v 0L in
  let key = "Hello" in
  let _ = Store.set main [ key ] ~info "world!" in
  let v = Store.get main [ key ] in
  print_endline v

let () = Eio_main.run @@ fun env -> test ()
