class Category < ApplicationRecord
  has_many :products

  validates :code, uniqueness: true
  validates :name, presence: true
  validates :description, presence: true
end
