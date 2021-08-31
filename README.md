# ocaml-weakmap
Binding to the `WeakMap` API using gen_js_api

## What does ocaml-weakmap do ?

This labrary allow yu to create and use `WeakMaps` object into your
ocaml app.

Binding to the [WeakMap
plugin](https://github.com/googlearchive/WeakMap) using gen_js_api.

See the [WeakMap official developer
documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap)
for more details about those objects.

## How to install and compile your project by using this plugin ?

You can use opam by pining the repository with:
```Shell
opam pin add weakmap https://github.com/besport/ocaml-weakmap
```

to compile your project, use:
```Shell
dune build @install
```

Finally, install the "weak_map" plugin with
```Shell
cordova plugin add weakmap
```

## How to use it?
[TODO]
