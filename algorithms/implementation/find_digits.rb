
# Methods

def exact_divide?(digit, num)
  digit = digit.to_i
  !num.zero? && digit % num === 0
end

def find_digit(digit)

  total_divide = 0
  digit.each_char do |c|
    num = c.to_i
    if exact_divide?(digit, num)
      total_divide += 1
    end
  end

  total_divide
end

# Start implementation

total_input = gets.to_i

total_input.times do
  digit = gets.to_s
  puts find_digit(digit)
end

