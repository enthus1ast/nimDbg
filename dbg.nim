import times

template dbg*(args: varargs[untyped]) =
  ##like `debugEcho` but removed when compiled with -d:release 
  when not defined release: debugEcho args

template timeIt*(name: string, p: untyped): untyped =
  ## Performs timing of the block call, and makes output into stdout.
  let timeStart = cpuTime()
  for idx in 0..10_000:
    p
  echo name, ": ", (cpuTime() - timeStart) * 1000000

when isMainModule:
  timeIt("foo"):
    echo "foo"
