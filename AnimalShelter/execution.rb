require 'csv'
require_relative './dog.rb'
require_relative './cat.rb'
require_relative './animal_shelter'

my_csv_file = File.read('./data.csv')

csv = CSV.parse(my_csv_file, :headers => true)

carmen_shelter = AnimalShelter.new

csv.each do |csv_row|
  id = csv_row['AnimalID']
  name = csv_row['Name']
  animal_type = csv_row['AnimalType']
  outcome = csv_row['OutcomeType']
  sex_upon_outcome = csv_row['SexuponOutcome']
  age_upon_outcome = csv_row['AgeuponOutcome']
  breed = csv_row['Breed']
  color = csv_row['Color']

  if animal_type == 'Dog'
    new_animal = Dog.new(id, name, outcome, sex_upon_outcome, age_upon_outcome, breed, color)
  else
    new_animal = Cat.new(id, name, outcome, sex_upon_outcome, age_upon_outcome, breed, color)
  end
  carmen_shelter.import_animal(new_animal)
end

puts "Number of dogs: #{carmen_shelter.dog_shelter.count}"
puts "Numner of cats: #{carmen_shelter.cat_shelter.count}"

carmen_shelter.cat_breed_record.each do | breed, count|
  puts "#{breed}: #{count}"
end

carmen_shelter.dog_breed_record.each do | breed, count|
  puts "#{breed}: #{count}"
end
