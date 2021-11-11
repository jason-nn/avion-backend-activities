def list(arr)
    return '' if arr.length == 0
    return arr[0][:name] if arr.length == 1

    temp_arr = []
    arr.each { |x| temp_arr << x[:name] }

    output = temp_arr.join(', ')
    output[temp_arr.join(', ').rindex(', '), 2] = ' & '
    return output
end

p list([{ name: 'Bart' }, { name: 'Lisa' }, { name: 'Maggie' }])
p list([{ name: 'Bart' }, { name: 'Lisa' }])
p list([{ name: 'Bart' }])
p list([])
