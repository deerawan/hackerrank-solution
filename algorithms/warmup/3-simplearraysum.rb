total_item = gets.to_i

input_item = gets
items = input_item.strip.split
truncate_items = items[0..total_item - 1]

sum = 0
truncate_items.each {|val| sum = sum + val.to_i }

puts sum

