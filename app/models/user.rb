class User < ApplicationRecord
  enum role: %i[user manager admin]
  enum status: %i[active blocked deleted]

  validates :full_name, uniqueness: { case_sensitive: false }, length: { minimum: 2 }

  has_many :issues
  has_many :feedbacks
  has_many :orders

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

end
