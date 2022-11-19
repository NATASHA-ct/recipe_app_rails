class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipefoods, dependent: :destroy
  has_many :foods, through: :recipefoods
end
