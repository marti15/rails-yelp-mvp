class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  # # has_many: retrieve all the reviews for a restaurant
  # def reviews
  #   Review.where(restaurant_id: self.id)
  # end
end
