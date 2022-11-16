class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :recipe_foods, dependent: :destroy
  validates :name, presence: true, length: { in: 3..200 }
end
