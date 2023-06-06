class Match < ApplicationRecord
  self.inheritance_column = nil
  belongs_to :user
  has_many :requests, dependent: :destroy
  # validates :address, presence: true
  # validates :type, presence: true
  # validates :modality, presence: true
  # validates :price, presence: true
  # validates :level, presence: true
  # validates :date, presence: true
  # validates :price, presence: true
  # validates :winner, presence: true
  # validates :score, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
