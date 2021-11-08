def century_from_year(year)
    return year / 100 if year / 100.0 % 1 == 0
    return year / 100 + 1
end

puts century_from_year 1705
puts century_from_year 1900
puts century_from_year 1601
puts century_from_year 2000
