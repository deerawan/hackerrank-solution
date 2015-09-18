# Method

def square?(number)
  result = Math.sqrt(number)
  result % 1 == 0.0
end

def countSquare(min, max)
  squareCount = 0
  (min..max).each do |number|
    squareCount = squareCount + 1 if square?(number)
  end
  squareCount
end

# Implementation

total_case = gets.to_i

total_case.times do
  numbers = gets.split
  squareCount = countSquare(numbers[0].to_i, numbers[1].to_i)
  puts squareCount
end