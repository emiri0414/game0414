class Game < ApplicationRecord
	belongs_to :customer, optional: true
	belongs_to :genre, optional: true
	belongs_to :year, optional: true
	has_many :reviews, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
end
