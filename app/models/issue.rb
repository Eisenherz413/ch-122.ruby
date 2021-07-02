class Issue < ApplicationRecord
  enum status: %i[opened inprogress done]

  belongs_to :category
  belongs_to :user
end
