def is_isogram(string)
    arr = []
    string.each_char do |letter|
        return false if arr.include? (letter.downcase)
        arr.push(letter.downcase)
    end
    return true
end

puts is_isogram('dermatoglyphics')
puts is_isogram('aba')
puts is_isogram('moOse')
