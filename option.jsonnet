{
  map(func)::
    if !std.isFunction(func) then
      error ('O.map first param must be function, got ' + std.type(func))
    else
      function (option)
        if option.type == 'some' then
          { type: 'some', value: func(option.value) }
        else
          option,

  chain(func)::
    if !std.isFunction(func) then
      error ('O.chain first param must be function, got ' + std.type(func))
    else
      function (option)
        if option.type == 'some' then
          func(option.value)
        else
          option,

  getOrElse(or_else)::
    function (option)
      if option.type == 'some' then option.value else or_else,
}
