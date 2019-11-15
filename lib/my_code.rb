def map(arg)
  new = []
  i = 0
  while i < arg.length
    new.push(yield(arg[i]))
    i += 1
  end
return new
end

def reduce(arg, startp = nil)
  if startp
    total = startp
    i = 0
  else
    total = arg[0]
    i = 1
  end
  while i < arg.length
    total = yield(total, arg[i])
    i += 1
  end
return total
end
