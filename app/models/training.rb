class Training < ApplicationRecord
  has_many :sessions
  has_many :likes
  has_many :workouts
  has_many :plans, through: :workouts
  has_many_attached :photos
  has_one_attached :video
  acts_as_taggable_on :tags
  acts_as_taggable_on :cats

  def intensity
    return 5 
    # if self.intensity.empty?
    # intensity
  end

  def self.all_tags
    [
      "Jump Rope",
      "Heavy Dumbell",
      "Light Dumbell",
      "Resistance Band",
      "Chair",
      "No Equipment",
    ]
  end

  def self.all_cats
    [
      "EMOM",
      "PUSH",
      "PULL",
      "YOGA",
      "MOBILITY",
      "WARM UP",
    ]
  end
  
  def photo_url
    if photos.attached?
      photos.first.key
    else
      "https://i.pinimg.com/474x/6f/64/60/6f6460212a397968497afbb9d81d6b3a.jpg"
    end
  end

  
  def video_url
    if video.attached?
      video.key
    else
      "https://i.pinimg.com/474x/6f/64/60/6f6460212a397968497afbb9d81d6b3a.jpg"
    end
  end
  
end
