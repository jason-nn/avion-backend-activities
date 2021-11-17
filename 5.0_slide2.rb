def find_uniq(arr)
    hash = {}

    arr.each do |x|
        if hash[x]
            hash[x] += 1
        else
            hash[x] = 1
        end
    end

    if hash[hash.keys[0]] < hash[hash.keys[1]]
        return hash.keys[0]
    else
        return hash.keys[1]
    end
end

puts find_uniq([1, 1, 1, 2, 1])
puts find_uniq([0, 0, 0.55, 0, 0])
