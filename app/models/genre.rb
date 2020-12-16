class Genre < ApplicationRecord
	has_many :games, dependent: :destroy
	enum is_active: {有効: true, 無効: false}
end
