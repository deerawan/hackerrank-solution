total_items = gets.to_i

items = gets
split_items = items.strip.split
truncated_items = split_items[0..total_items - 1]

sum = 0
truncated_items.each { |val| sum += val.to_i }

puts sum