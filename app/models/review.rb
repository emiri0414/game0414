class Review < ApplicationRecord
	belongs_to :customer
	belongs_to :game, optional: true
end
