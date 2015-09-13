height = gets.to_i

height.times do |i|
  total_stair = i + 1
  total_space = height - total_stair
  puts (" " * total_space) + ("#" * total_stair)
end