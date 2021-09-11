class Room < ApplicationRecord
  validates :number, format: { with: /\A[\-а-яА-ЯёЁІіЇїЄєa-zA-Z0-9\s]+\z/ }, length: {maximum: 10, minimum: 2}, presence: true, uniqueness: true
  validates :title, length: {minimum: 2, maximum: 25}, presence: true
  validates :capacity, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }, presence: true
  validates :price, format: {with: /\A[0-9]+.*[0-9]*\z/}, presence: true
  validate :acceptable_cover
  validate :acceptable_images
  has_many :orders
  has_many :room_services, dependent: :restrict_with_exception
  has_many :services, through: :room_services
  has_one_attached :cover
  has_many_attached :images

  def destroyable?
    Order.all.each do |order|
      status = order.status
      return false if status != 'cancelled' && status != 'completed'
    end
  end

  def non_destroyable?
    !destroyable?
  end
  def acceptable_cover
    if !cover.attached?
      return
    end
    if cover.byte_size  > 2.megabyte
      errors.add(:cover, :size)
    end
    acceptable_types = ["image/jpeg", "image/png", "image/jpg"]
    if !acceptable_types.include?(cover.content_type)
      errors.add(:cover, :format)
    end
  end
  def acceptable_images
    if !images.attached?
      return
    end

    errors.add(:images, :count) if images.count > 4
    acceptable_types = ["image/jpeg", "image/png", "image/jpg"]
    images.each do |image|
    if image.byte_size  > 2.megabyte
      errors.add(:images, :size)
    end
    if !acceptable_types.include?(image.content_type)
      errors.add(:images, :format)
    end
    end

  end
end
