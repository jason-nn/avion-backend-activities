def encode(input)
    input
        .gsub('a', '1')
        .gsub('e', '2')
        .gsub('i', '3')
        .gsub('o', '4')
        .gsub('u', '5')
end

def decode(input)
    input
        .gsub('1', 'a')
        .gsub('2', 'e')
        .gsub('3', 'i')
        .gsub('4', 'o')
        .gsub('5', 'u')
end

puts encode('hello')
puts decode('h3 th2r2')
