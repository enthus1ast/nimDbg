# nimDbg
"dbg" template; in debug echo

```nim
template dbg*(args: varargs[untyped]) =
  ##like `debugEcho` but removed when compiled with -d:release 
  when not defined release: debugEcho args
```
