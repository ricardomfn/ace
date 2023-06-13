class League < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true

  CATEGORIES = ["icon1.jpg", "icon2.jpg", "icon6.jpg", "icon4.jpg", "icon7.jpg"]

end
