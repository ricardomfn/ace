class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :matches
  has_many :requests
  has_many :memberships, dependent: :destroy
  has_many :leagues_as_member, through: :memberships, source: :league
  has_many :user_chatrooms
  has_many :chatrooms, through: :user_chatrooms

  belongs_to :leagues, optional: true

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true

  def name
    nickname
  end

  def chat_with?(user)
    chatroom_with(user).present?
  end

  def chatroom_with(user)
    Chatroom.all.find { |cr| cr.users.include?(self) && cr.users.include?(user) }
  end
end
