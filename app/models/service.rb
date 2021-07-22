class Service < ApplicationRecord
  validates :name, uniqueness: true, presence: true, format: { with: /\A[\-а-яА-ЯёЁІіЄєa-zA-Z\s]+\z/ , message: "Only allows letters" },
            length: {maximum: 50, minimum: 2}
  validates :description, presence: false, length: {maximum: 100}
  validates :icon_url, presence: true

  has_many :room_services, :dependent => :destroy
  has_many :rooms, through: :room_services

  def self.can_destroy_service(service)
    service.rooms.each do |room|
      Order.find(room.orders.ids).each do |order|
        status = Order.statuses.key(Order.statuses[order.status])
        if status != 'cancelled' && status != 'completed'
          return false
        end
      end
    end
    return true
  end
end
