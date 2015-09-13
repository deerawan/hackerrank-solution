total_numbers = gets.to_f
numbersInput = gets.split

positiveNumCount = 0.0;
negativeNumCount = 0.0;
zeroNumCount = 0.0;
numbersInput.each do |number|
  number = number.to_i
  if number > 0
    positiveNumCount = positiveNumCount + 1
  elsif number < 0
    negativeNumCount = negativeNumCount + 1
  elsif number == 0
    zeroNumCount = zeroNumCount + 1
  end
end

puts (positiveNumCount/total_numbers).round(6)
puts (negativeNumCount/total_numbers).round(6)
puts (zeroNumCount/total_numbers).round(6)
