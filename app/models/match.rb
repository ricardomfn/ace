class Match < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  validates :address, presence: true
  validates :type, presence: true
  validates :modality, presence: true
  validates :price, presence: true
  validates :level, presence: true
  validates :date, presence: true
  validates :price, presence: true
  validates :winner, presence: true
  validates :score, presence: true
end
