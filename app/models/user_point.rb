class UserPoint < ApplicationRecord
  belongs_to :user
  belongs_to :point
end
