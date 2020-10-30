class Animal < ApplicationRecord

  validates :catType, :catName, :dogType, :dogName, :dogSize, presence: true

  scope :cat, -> (cat_name) { where("cat ?", "%#{cat_name}%") }

  scope :dog, -> (dog_name) {  where("dog ?", "%#{dog_name}%") }

  scope :search, -> (cat_name, dog_name) { where("cat ? AND dog ?", "%#{cat_name}%", "%#{dog_name}%") }


  before_save(:titleize)

  private
    def titleize
      self.cat = self.cat.titleize
      self.dog = self.dog.titleize
    end
end