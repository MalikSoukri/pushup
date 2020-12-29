class Plan < ApplicationRecord
  belongs_to :category
  has_many :workout
  has_many_attached :photos

end
