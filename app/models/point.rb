class Point < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255 }
  validates :tokuten, presence: true, numericality: :only_integer
end