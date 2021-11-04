def unique_in_order(input)
    output = []
    if input.class == String
        input.each_char { |element| output << element if output[-1] != element }
    else
        input.each { |element| output << element if output[-1] != element }
    end
    return output
end

p unique_in_order('AAAABBBCCDDAABBB')
p unique_in_order('ABBCcAD')
p unique_in_order([1, 2, 2, 3, 3])
