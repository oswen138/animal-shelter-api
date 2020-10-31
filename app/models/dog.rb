class Dog < ApplicationRecord

  validates :dogType, :dogName, :dogSize, presence: true

  scope :dog, -> (dog_name) {  where("#{dog_name}") }

  scope :search, -> (dog_name) { where("#{dog_name}") }

end