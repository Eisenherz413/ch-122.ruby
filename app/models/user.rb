class User < ApplicationRecord
  enum role: %i[user manager admin], _default: 'user'
  enum status: %i[active blocked]

  validates :full_name, uniqueness: { case_sensitive: false }, length: { minimum: 2 }

  has_many :issues
  has_many :feedbacks
  has_many :orders

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  protected

  def confirmation_required?
    false
  end

end
