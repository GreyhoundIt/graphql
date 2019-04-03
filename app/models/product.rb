class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :brand
  belongs_to :category
end
