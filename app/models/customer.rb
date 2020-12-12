class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :games, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :username, presence: true, uniqueness: true, length: { maximum: 15 }
  validates :nickname, presence: true, uniqueness: true, length: { maximum: 15 }
  validates :profiel, length: { maximum: 1000 }
  attachment :image
end
