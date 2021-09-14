# frozen_string_literal: true
class Category < ActiveRecord::Base
  validates :name, uniqueness: { case_sensitive: false }
  validates :description, length: { maximum: 150 }, format: { with: /\A\D([A-z0-9])/,
                                                              message: 'should not start from a digit' },
                          allow_blank: true
  has_many :issues
  enum name: [:Urgent, :Breakage, :Advice, :Other]

  def translated_name
    I18n.t(name, :scope => 'activerecord.attributes.category.names')
  end

end
