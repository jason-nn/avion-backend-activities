a = 0
b = 1

sum = 0

while a + b <= 4_000_000
    c = b
    d = a + b
    a = c
    b = d
    sum += b if b % 2 == 0
end

puts sum
