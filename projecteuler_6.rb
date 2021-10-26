# ----- v1 ----- #

def sum_of_squares(i, j)
    output = 0

    (i..j).each { |k| output += k**2 }

    return output
end

def square_of_sum(i, j)
    output = 0

    (i..j).each { |k| output += k }

    output **= 2

    return output
end

def difference(i, j)
    return square_of_sum(i, j) - sum_of_squares(i, j)
end

puts difference(1, 10)
puts difference(1, 100)

# ----- v2 ----- #

def sum_of_squares(i, j)
    return (i..j).to_a.map { |x| x**2 }.sum
end

def square_of_sum(i, j)
    return ((i + j) * (-i + j + 1) / 2)**2
end

def difference(i, j)
    return square_of_sum(i, j) - sum_of_squares(i, j)
end

puts difference(1, 10)
puts difference(1, 100)

# ----- v3 ----- #

def difference(i, j)
    (((i + j) * (-i + j + 1) / 2)**2) - ((i..j).to_a.map { |x| x**2 }.sum)
end

puts difference(1, 10)
puts difference(1, 100)
