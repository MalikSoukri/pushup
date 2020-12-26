class Training < ApplicationRecord
  has_many :sessions
  has_many :likes
  has_many :workouts
  has_many :plans
  has_many_attached :photos
end
