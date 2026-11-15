=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @raw_matrix = matrix
    @matrix = nil
    compute_data()
  end

  def compute_data
    @matrix = @raw_matrix.split(/\n/).map do |item|
      item.split(/\s/).map(&:to_i) 
    end
  end

  def row(index)
    @matrix[index-1]
  end

  def column(index)
    @matrix.map { |item| item[index-1] }
  end
end
