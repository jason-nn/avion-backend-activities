def string_incrementer(str)
    index = 0

    str.each_char do |i|
        if i =~ /[0-9]/
            letters = str[0..index - 1]
            numbers = str[index..str.length]

            digits = numbers.length
            incremented_number = (numbers.to_i + 1).to_s

            if incremented_number.length >= digits
                return letters + incremented_number
            else
                return(
                    letters + ('0' * (digits - incremented_number.length)) +
                        incremented_number
                )
            end
        end

        index += 1
    end

    return str + '1'
end

puts string_incrementer('foo')
puts string_incrementer('foobar23')
puts string_incrementer('foo0042')
puts string_incrementer('foo9')
puts string_incrementer('foo099')
