=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(matrix)
    @matrix = matrix.split(/\n/).map do |item|
      item.split(/\s/).map(&:to_i) 
    end
  end

  def row(index)
    @matrix[index-1]
  end

  def column(index)
    @matrix.transpose[index - 1]
  end
end
