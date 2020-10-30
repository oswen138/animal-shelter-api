class Animal < ApplicationRecord

  validates :catType, :catName, :dogType, :dogName, :dogSize, presence: true

  scope :cat, -> (cat_name) { where("#{cat_name}") }

  scope :dog, -> (dog_name) {  where("#{dog_name}") }

  scope :search, -> (cat_name, dog_name) { where("#{cat_name}", "#{dog_name}") }

end