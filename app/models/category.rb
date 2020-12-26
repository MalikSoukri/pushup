class Category < ApplicationRecord
  has_many :plans
  has_many :workout, through: :plans
end
