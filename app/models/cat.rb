class Cat < ApplicationRecord

  validates :catType, :catName, presence: true

  scope :cat, -> (cat_name) { where("#{cat_name}") }

  scope :search, -> (cat_name) { where("#{cat_name}") }

end