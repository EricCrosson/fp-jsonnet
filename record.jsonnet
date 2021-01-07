{
  // string -> object<string, A> -> Option<A>
  lookup(property)::
    if !std.isString(property) then
      error ('R.lookup first param must be string, got ' + std.type(property))
    else
      function (object)
        if std.objectHas(object, property) then
          { type: 'some', value: object[property] }
        else
          { type: 'none' },
}
