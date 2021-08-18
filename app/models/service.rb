class Service < ApplicationRecord
  validates :name, uniqueness: true, presence: true, format: { with: /\A[\-а-яА-ЯёЁІіЄєa-zA-Z\s]+\z/  },
            length: {maximum: 50, minimum: 2}
  validates :description, presence: false, length: {maximum: 100}
  validates :icon_url, presence: true

  has_many :room_services, :dependent => :destroy
  has_many :rooms, through: :room_services

  def destroyable?
    rooms.each do |room|
      return false if room.non_destroyable?
    end
  end

end
