def cycle_length(i)
    output = 1

    while i != 1
        if i % 2 == 0
            i = i / 2
        else
            i = 3 * i + 1
        end
        output += 1
    end

    return output
end

def maximum_cycle_length(i, j)
    output = 0

    for k in i..j
        output = cycle_length(k) if cycle_length(k) > output
    end

    return "#{i} #{j} #{output}"
end

puts maximum_cycle_length(1, 10)
puts maximum_cycle_length(100, 200)
puts maximum_cycle_length(201, 210)
puts maximum_cycle_length(900, 1000)
