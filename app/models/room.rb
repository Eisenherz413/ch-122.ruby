class Room < ApplicationRecord
  validates :number, uniqueness: true, presence: true

  has_many :orders
  has_many :room_services
  has_many :services, through: :room_services

  has_many :room_images

  def destroyable?
    orders.each do |order|
      status = Order.statuses.key(Order.statuses[order.status])
      return false if status != 'cancelled' && status != 'completed'
    end
  end

  def non_destroyable?
    !destroyable?
  end

end
