[@@@js.stop]

val available : unit -> bool

type value = Obj.t

[@@@js.start]

[@@@js.implem
let available () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global ##. WeakMap]

[@@@js.implem type value = Obj.t]

[@@@js.implem let value_of_js = Obj.magic]

[@@@js.implem let value_to_js = Obj.magic]

type key = Ojs.t

type weakmap

val new_weakmap : ?iterable:(key * Ojs.t) array -> unit -> weakmap
  [@@js.new "WeakMap"]

val get : weakmap -> key -> value [@@js.call]

(*val get_fun : weakmap -> key -> Ojs.t -> unit [@@js.call "get"]*)

val set : weakmap -> key -> value -> unit [@@js.call]

val delete : weakmap -> key -> unit [@@js.call]

(*
[@@@js.stop]

val get : weakmap -> key -> value

(*val get_fun : weakmap -> key -> Ojs.t -> unit [@@js.call "get"]*)

val set : weakmap -> key -> value -> unit

val delete : weakmap -> key -> unit

[@@@js.start]

[@@@js.implem let get map k = Obj.obj (map##get (Obj.repr k))]

[@@@js.implem let set map k v = map##set (Obj.repr k) (Obj.repr v)]

[@@@js.implem let delete map k = map##delet (Obj.repr k)]
 *)

(*ABORT*)
(*
[@@@js.stop]

type weakmap_js = (Js_of_ocaml.Js.Unsafe.global ##. WeakMap) Js_of_ocaml.Js.t

val new_weakmap_js : ?iterable:(key * Ojs.t) array -> unit -> weakmap_js

val get_js : weakmap_js -> 'a -> 'b Js_of_ocaml.Js.meth

val set_js : weakmap_js -> 'a -> 'b -> unit Js_of_ocaml.Js.meth

val delete_js : weakmap_js -> 'a -> unit Js_of_ocaml.Js.meth

[@@@js.start]

[@@@js.implem
let weakmap_js = Js_of_ocaml.Js.Unsafe.global ##. WeakMap Js_of_ocaml.Js.t]

[@@@js.implem
let new_weakmap_js ?iterable () =
  let w = Js_of_ocaml.Js.Unsafe.global ##. WeakMap in
  new%js w iterable]

(*??? Comment faire un appel de fonction à partir argument js.implem*)

[@@@js.implem let get_js map k = map##get k]

[@@@js.implem let set_js map k v = map##set k v]

[@@@js.implem let delete_js map k = map##delete k]
 *)
