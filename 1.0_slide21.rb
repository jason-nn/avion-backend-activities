# ----- 1 ----- #

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

nums.each { |num| puts num }

puts

# ----- 2 ----- #

h = { a: 1, b: 2, c: 3, d: 4 }

b = h[:b]

puts b

h[:e] = 5

puts h

puts

# ----- 3 ----- #

contact_data = [
    ['john@email.com', '123 Main St.', '555-123-4567'],
    ['avion@email.com', '404 Not Found Dr.', '123-234-3454'],
]

contacts = { 'John Cruz' => {}, 'Avion School' => {} }

def add_details(hash, key, data, data_keys)
    count = 0
    data.each do |datum|
        hash[key][data_keys[count]] = datum
        count += 1
    end
end

add_details(contacts, 'John Cruz', contact_data[0], %w[email address phone])
add_details(contacts, 'Avion School', contact_data[1], %w[email address phone])

puts contacts

puts

# ----- 4 ----- #

def age_rb
    print 'How old are you? '
    age = gets.chomp
    years = [10, 20, 30, 40]
    years.each do |year|
        puts "In #{year} years you will be:"
        puts age.to_i + year
    end
end

age_rb

puts
