[@@@js.stop]

val available : unit -> bool

[@@@js.start]

[@@@js.implem
let available () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global ##. WeakMap]

type weakmap

type key = Ojs.t

val new_weakmap : ?iterable:(key * Ojs.t) array -> unit -> weakmap
  [@@js.new "WeakMap"]

val get : weakmap -> key -> Ojs.t [@@js.call]

val set : weakmap -> key -> Ojs.t -> unit [@@js.call]
