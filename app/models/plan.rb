class Plan < ApplicationRecord
  belongs_to :category
  has_many :workout
end
