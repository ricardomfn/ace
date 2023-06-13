class League < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true

  CATEGORIES = ["icon1.png", "icon2.png", "icon3.png", "icon4.png", "icon5.png", "icon6.png"]

end
