# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        catName: Faker::Creature::Cat.name,
        catType: Faker::Creature::Cat.breed,
        dogName: Faker::Creature::Dog.name,
        dogType: Faker::Creature::Dog.breed,
        dogSize: Faker::Creature::Dog.size

      )
      puts "Animal #{i}: Cat is #{animal.catName} and the breed is #{animal.catType}'."
      puts "Animal #{i}: Dog is #{animal.dogName}, breed is #{animal.dogType}, and the size is #{animal.dogSize}'."
    end
  end
end

Seed.begin