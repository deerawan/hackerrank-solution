
input = gets.to_i

def factorial(n)
  total = 0
  if n == 1
    total = 1
  elsif
    total = n * factorial(n - 1)
  end
  total
end

puts factorial(input)
