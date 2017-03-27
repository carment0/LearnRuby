class Animal
  attr_reader :id, :name, :outcome, :sex_upon_outcome, :age_upon_outcome
  def initialize(id, name, outcome, sex_upon_outcome, age_upon_outcome)
    @id = id
    @name = name
    @outcome = outcome
    @sex_upon_outcome = sex_upon_outcome
    @age_upon_outcome = age_upon_outcome
  end
end
