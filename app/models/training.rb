class Training < ApplicationRecord
  has_many :sessions
  has_many :likes
  has_many_attached :photos
end
