def map(array)
result = []
i = 0 

while i < array.length do 
 result.push(yield(array[i]))

 i += 1 
 end
result 
end

def reduce(array, start = nil)
 
 if start
   sum = start
   i = 0 
 else 
   sum = array[0]
   i = 1 
 end
 
while i < array.length 
 sum =  yield(sum, array[i])
 i += 1 
 end 
 sum 
end 