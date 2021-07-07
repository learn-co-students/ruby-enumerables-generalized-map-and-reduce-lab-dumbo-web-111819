def map(source_array)
  new_array = []
  index = 0 
  while index < source_array.length do 
    new_array.push(yield(source_array[index]))
    index += 1 
  end
  new_array
end

def reduce(source_array, sv = nil)
  if sv 
    sum = sv 
    index = 0 
  else 
    sum = source_array[0]
    index = 1 
  end 
  
  while index < source_array.length do 
    sum = yield(sum, source_array[index])
    index += 1 
  end 
  sum
end




