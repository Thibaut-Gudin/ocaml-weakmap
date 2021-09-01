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
