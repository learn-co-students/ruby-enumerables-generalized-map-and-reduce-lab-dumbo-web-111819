# Your Code Here
def map(array)
  new_array = []
  i = 0 
  while i < array.length do
    new_array.push(yield(array[i]))
    i+=1
  end 
  new_array
end

def reduce(array, sv = nil )
  if sv 
    sum = sv
    i = 0 
  else 
    sum = array[0]
    i = 1
  end
  while i < array.length do 
    ele = array[i]
    sum = yield(sum, ele)
    i+=1
  end 
sum
end 