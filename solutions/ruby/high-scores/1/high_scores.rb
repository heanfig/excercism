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

  def latest = @scores[-1]

  def personal_best = @scores.sort[-1]

  def personal_top_three = @scores.sort[-3..].reverse

  def latest_is_personal_best? = @scores.sort[-1] == @scores[-1]
end

#p HighScores.new([100, 40, 10, 70]).latest_is_personal_best?