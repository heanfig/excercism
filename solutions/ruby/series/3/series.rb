=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(serie)
    @series = serie.split('')
    raise ArgumentError if @series.size == 0
  end

  def slices(slice_series)
    raise ArgumentError if @series.size < slice_series
    raise ArgumentError if slice_series <= 0

    slice_part = []
    counter = 0 
    until @series[counter,slice_series].size != slice_series
      slice_part << @series[counter,slice_series]
      counter += 1
    end
    slice_part.map(&:join)
  end
end
