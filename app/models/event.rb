class Event < ApplicationRecord
  belongs_to :user
  belongs_to :status
  belongs_to :category
  has_rich_text :description
end
