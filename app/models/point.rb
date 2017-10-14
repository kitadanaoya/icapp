class Point < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255 }
  validates :tokuten, presence: true, numericality: :only_integer
  has_many :user_points, :column => :point_ids, dependent: :destroy
  has_many :users, through: :user_points
end