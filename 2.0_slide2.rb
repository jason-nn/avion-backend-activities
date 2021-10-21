def min(arr)
    output = arr[0]
    for i in arr
        output = i if i < output
    end
    return output
end

puts min([34, 55, 18, 2])
puts min([34, -345, -1, 100])
