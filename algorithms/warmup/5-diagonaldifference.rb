matrix_n = gets.to_i

matrix = []
matrix_n.times do
  input_matrix = gets.split
  matrix << input_matrix
end

def sum_first_diagonal(matrix)
  sum = 0
  matrix.each_with_index do |mat, index|
    matrix_item = mat[index]
    sum += matrix_item.to_i
  end
  sum
end

def sum_second_diagonal(matrix)
  sum = 0
  lengthForIndex = matrix.length - 1
  matrix.each_with_index do |mat, index|
    matrix_item = mat[lengthForIndex - index]
    puts matrix_item
    sum += matrix_item.to_i
  end
  sum
end

def difference(a, b)
  (a - b).abs
end

firstSum = sum_first_diagonal(matrix)
secondSum = sum_second_diagonal(matrix)
puts difference(firstSum, secondSum)