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
    return if !cover.attached?
    # errors.add(:cover, :count) if cover.id.nil?
    errors.add(:cover, :size) if cover.byte_size  > 2.megabyte

    acceptable_types = ["image/jpeg", "image/png", "image/jpg"]
    errors.add(:cover, :format) if !acceptable_types.include?(cover.content_type)
  end
  def acceptable_images
    return if !images.attached?

    errors.add(:images, :count) if images.count > 4
    acceptable_types = ["image/jpeg", "image/png", "image/jpg"]
    images.each do |image|
      errors.add(:images, :size) if image.byte_size  > 2.megabyte
      errors.add(:images, :format) if !acceptable_types.include?(image.content_type)

    end

  end
end
