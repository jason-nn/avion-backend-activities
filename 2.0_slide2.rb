def min(arr)
    output = arr[0]
    arr.each { |i| output = i if i < output }
    return output
end

puts min([34, 55, 18, 2])
puts min([34, -345, -1, 100])
