{
  pipe(value, funcs)::
    std.foldl(function (acc, f) f(acc), funcs, value)
}
