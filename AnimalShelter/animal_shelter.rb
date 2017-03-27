class AnimalShelter

  attr_reader :dog_shelter, :dog_breed_record, :cat_shelter, :cat_breed_record

  def initialize
    @dog_shelter = []
    @dog_breed_record = Hash.new
    @cat_shelter = []
    @cat_breed_record = Hash.new
  end

  def import_animal(animal)
    if animal.type == 'Dog'
      @dog_shelter << animal
      if @dog_breed_record[animal.breed].nil?
        @dog_breed_record[animal.breed] = 1
      else
        @dog_breed_record[animal.breed] += 1
        @dog_shelter << animal
      end
    else
      if @cat_breed_record[animal.breed].nil?
        @cat_breed_record[animal.breed] = 1
      else
        @cat_breed_record[animal.breed] += 1
        @cat_shelter << animal
      end
    end
  end

end
