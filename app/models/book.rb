class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :readers, through: :checkouts
end
