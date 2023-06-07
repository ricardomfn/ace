class Match < ApplicationRecord
  TYPES = ['Amical', 'Défi']
  MODALITIES = ['Simple', 'Double']
  belongs_to :user
  has_many :requests, dependent: :destroy
  validates :address, presence: true
  validates :match_type, presence: true
  validates :modality, presence: true
  validates :price, presence: true
  validates :level, presence: true
  validates :date, presence: true
  validates :price, numericality: { greater_than: 0 }
  # validates :winner, presence: true
  # validates :score, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
