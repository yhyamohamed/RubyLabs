class Product < ApplicationRecord
  validates :name,presence: true, length: { minimum: 5 }
  validates :description,presence: true
  validates :price,presence: true
  validates :image,presence: true
end
