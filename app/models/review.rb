class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: { in: (0..5) }, presence: true
  validates :rating, numericality: true
  validates :content, presence: true
end
