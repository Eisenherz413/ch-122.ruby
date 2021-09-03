class Issue < ApplicationRecord
  enum status: %i[opened in_progress done]

  belongs_to :category
  belongs_to :user
end
