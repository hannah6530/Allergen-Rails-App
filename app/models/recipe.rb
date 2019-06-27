class Recipe < ApplicationRecord
  belongs_to :user

  has_one_attached :food_photo


  validates :name, presence: true, uniqueness: true

end
