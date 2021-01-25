class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :sessions
  has_many :trainings, through: :sessions
  has_many :likes

  def photo_url
    if photo.attached?
      photo.key
    else
      "https://i.pinimg.com/474x/6f/64/60/6f6460212a397968497afbb9d81d6b3a.jpg"
    end
  end
end


