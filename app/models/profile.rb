class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :sessions
  has_many :trainings, through: :sessions
  has_many :likes
end
