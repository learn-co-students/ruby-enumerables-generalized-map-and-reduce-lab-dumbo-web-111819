# Your Code Here

def map(source_array)
  new_array =[]
  i = 0 
  while i < source_array.count do
    
    new_array << yield(source_array[i])
    i += 1 
    
  end
  new_array
end


def reduce(source_array, starting_point = nil)
  if starting_point
    i = 0
  else
   starting_point = source_array[0]
   i =1 
  end
  total = starting_point
  while i < source_array.count do
    total = yield(total,source_array[i])
    i += 1 
  end
  return total
end
  
