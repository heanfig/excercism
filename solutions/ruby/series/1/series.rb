=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(serie)
    @series = serie
  end

  def slices(slice_series)
    data = @series.split('')
    slice_part = []
    counter = 0 
    until data[counter,slice_series].size != slice_series
      slice_part << data[counter,slice_series]
      counter += 1
    end
    slice_part.map(&:join)
  end
end
