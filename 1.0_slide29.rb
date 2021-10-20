# ----- 1 ----- #

arr = [1, 3, 5, 7, 9, 11]
num = 3

def appears(num, arr)
    for i in arr
        return true if i == num
    end
    return false
end

puts(appears(num, arr))
puts

# ----- 2 ----- #

def range(num)
    if num > 100
        return 'Number is greater than 100'
    elsif num >= 51
        return 'Number is between 51 and 100'
    elsif num >= 0
        return 'Number is between 0 and 50'
    else
        return 'Number is less than 0'
    end
end

puts(range(-8))
puts(range(8))
puts(range(88))
puts(range(108))
puts

# ----- 4 ----- #

def get_even(arr)
    even = []
    for i in arr
        even.push(i) if i % 2 == 0
    end
    return even
end

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
puts(get_even(arr))
puts

# ----- 3 ----- #
# placed here so output to 4 is visible without having to end while loop

def stop_loop
    print ('type STOP to stop: ')
    input = gets.chomp

    while input != 'STOP'
        print ('type STOP to stop: ')
        input = gets.chomp
    end
end

stop_loop
