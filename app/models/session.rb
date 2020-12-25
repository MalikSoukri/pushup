class Session < ApplicationRecord
  belongs_to :training
  belongs_to :profile
end
