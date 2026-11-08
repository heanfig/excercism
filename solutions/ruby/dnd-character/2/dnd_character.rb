=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  attr_reader :attributes

  ATTRIBUTES = %i[strength dexterity constitution intelligence wisdom charisma]

  def self.modifier(score) = (score - 10 ) / 2

  def initialize
    @attributes = ATTRIBUTES.reduce({}) do |acc, attribute|
      acc[attribute] = 4.times.map { |item| rand(1..6) }.sort.last(3).sum
      acc
    end
  end

  ATTRIBUTES.each { |attribute| define_method(attribute) { @attributes[attribute] } }

  def hitpoints = 10 + DndCharacter.modifier(@attributes[:constitution])

end
