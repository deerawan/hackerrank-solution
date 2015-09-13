def sum(a, b)
  a + b
end

total_line = gets.to_i

total_line.times do
  multi_val = gets
  val = multi_val.split
  result = sum(val[0].to_i, val[1].to_i)
  puts result
end