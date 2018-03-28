class Review < ApplicationRecord
	validates :content, presence: true, length: { minimum: 1 }
	validates :rating, numericality: true, presence: true, inclusion: { in: (0..5) }

	belongs_to :restaurant
end
