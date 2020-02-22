# nimDbg
"dbg" template; in debug echo

```nim
template dbg*(args: varargs[untyped]) =
  ##like `debugEcho` but removed when compiled with -d:release
  when not defined release: debugEcho args
```

`decho` echos lineinfo, your statement and statements value

```nim
decho("foo" & "baa" & $123)
# >>> /home/david/nimDbg/dbg.nim(25, 22): "foo" & "baa" & $123 => foobaa123
