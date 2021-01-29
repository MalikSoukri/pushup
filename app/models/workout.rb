class Workout < ApplicationRecord
  belongs_to :plan
  belongs_to :training

end
