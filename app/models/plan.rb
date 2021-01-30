class Plan < ApplicationRecord
  belongs_to :category
  has_many :workouts
  has_many :plans, through: :workout
  has_many_attached :photos
  
end
