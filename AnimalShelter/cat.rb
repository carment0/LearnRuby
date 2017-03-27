#refers this rb document to the class animal.rb document
require_relative './animal.rb'

class Cat < Animal
  attr_reader :breed, :color
  def initialize (id, name, outcome, sex_upon_outcome, age_upon_outcome, breed, color)
      ##aka Animal.new, Refer to Animal#initialize
      super(id, name, outcome, sex_upon_outcome, age_upon_outcome)
    @breed = breed
    @color = color
  end

  def to_s
    return "The #{@breed} cat, #{@name} meow!!!"
  end
  
  def type
    'Cat'
  end
end
