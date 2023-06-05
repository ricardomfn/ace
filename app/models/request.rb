class Request < ApplicationRecord
  enum :status, [:pending, :accepted, :refused]
  belongs_to :user
  belongs_to :match
end
