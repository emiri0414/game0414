class Year < ApplicationRecord
	has_many :games, dependent: :destroy
end
