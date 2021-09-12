class User < ApplicationRecord
  enum role: %i[user manager admin], _default: 'user'
  enum status: %i[active blocked], _default: 'active'

  validates :full_name, uniqueness: { case_sensitive: false }, length: { minimum: 2 }, presence: true
  validates :email, format: {with: /\A[a-z0-9+_.-]+@[a-z0-9.-]+\z/}, presence: true
  validate_enum_attributes :role, message: "Role is not a valid"
  validate_enum_attributes :status, message: "Status is not a valid"


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
