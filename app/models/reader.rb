class Reader < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

  has_many :checkouts
  has_many :books, through: :checkouts

end
