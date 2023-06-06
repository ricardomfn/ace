class Match < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy

  # validates :address, presence: true
  # validates :match_type, presence: true
  # validates :modality, presence: true
  # validates :price, presence: true
  # validates :level, presence: true
  # validates :date, presence: true
  # validates :price, presence: true
  # validates :winner, presence: true on
  # validates :score, presence: true on
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
