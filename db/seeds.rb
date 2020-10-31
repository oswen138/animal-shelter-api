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
    seed.generate_cats
    seed.generate_dogs
  end

  def generate_cats
    20.times do |i|
<<<<<<< HEAD
      animal = Animal.create!(
        animalType: animalType.sample,
=======
      cat = Cat.create!(
>>>>>>> b3f2ed13bb579a47fd45b39626c2e6f3bee40e9e
        catName: Faker::Creature::Cat.name,
        catType: Faker::Creature::Cat.breed
      )
    end
      puts "Cat is #{cat.catName} and the breed is #{cat.catType}'."
  end

  def generate_dogs
    20.times do |i|
      dog = Dog.create!(
        dogName: Faker::Creature::Dog.name,
        dogType: Faker::Creature::Dog.breed,
        dogSize: Faker::Creature::Dog.size
      )
    end
    puts "Dog is #{dog.dogName}, breed is #{dog.dogType}, and the size is #{dog.dogSize}'."
  end
end

Seed.begin