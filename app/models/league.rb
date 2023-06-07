class League < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
