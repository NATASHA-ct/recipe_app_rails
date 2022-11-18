class Food < ApplicationRecord
  belongs_to :user
  has_many :recipefoods, dependent: :destroy
  has_many :recipes, through: :recipefoods
  # validates :name, presence: true
end
