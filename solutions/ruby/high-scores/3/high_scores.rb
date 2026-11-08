=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end
class HighScores 
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest = @scores.last

  def personal_best = @scores.sort.last

  def personal_top_three = @scores.sort.last(3)

  def latest_is_personal_best? = @scores.sort.last == @scores.last
end