class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :matches
  has_many :requests
  has_many :memberships, dependent: :destroy
  has_many :leagues_as_member, through: :memberships, source: :league
  belongs_to :leagues, optional: true
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true

  def name
    nickname
  end
end
