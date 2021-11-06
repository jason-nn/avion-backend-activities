def disemvowel(input)
    input.gsub(/[aeiouAEIOU]/, '')
end

puts disemvowel 'This website is for losers LOL!'
