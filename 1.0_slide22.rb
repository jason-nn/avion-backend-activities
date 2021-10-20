def is_perfect_square(num)
    count = 0
    square = 0
    while square <= num
        return true if (square == num)
        count += 1
        square = count**2
    end
    return false
end

puts(is_perfect_square(-1))
puts(is_perfect_square(0))
puts(is_perfect_square(3))
puts(is_perfect_square(4))
puts(is_perfect_square(25))
puts(is_perfect_square(26))

# time to run is x + 1 iterations, where x is the square root of the input, rounded down

# time complexity
# O(⌊√n⌋ + 1)
