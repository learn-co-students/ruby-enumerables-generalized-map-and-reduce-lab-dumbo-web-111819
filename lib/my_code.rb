# Your Code Here

# def map(input, &block)
#   result = []
#   input.each { |n| result << block.call(n) }
#   result
# end

def map(input)
  output = []
  i = 0
  while i < input.length
    output.push(yield(input[i]))
    i += 1
  end
  output
end


def reduce(input, init = nil)
  if init
    n = init
    i = 0
  else
    n = input[0]
    i = 1
  end
  while i < input.length
    n = yield(n, input[i])
    i += 1
  end
  n
end

