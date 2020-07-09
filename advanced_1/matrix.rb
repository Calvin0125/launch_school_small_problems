require 'pry'
require 'pry-byebug'

def transpose(matrix)
  transposed = []
  matrix[0].length.times do
    transposed << []
  end

  matrix.each do |row|
    row.each_with_index do |num, index|
      transposed[index] << num
    end
  end
  transposed
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]
puts transpose([[1, 5, 8], [4, 7, 2], [3, 9, 6]]) == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

def rotate90(matrix)
  new_matrix = []
  index = 0
  row_length = matrix[0].length
  
  row_length.times do
    new_row = []
    matrix.reverse_each do |row|
      new_row << row[index]
    end
    new_matrix << new_row
    index += 1
  end

  new_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2