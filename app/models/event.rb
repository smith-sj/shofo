class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description
  has_one_attached :event_image

  enum status: {
    scheduled: 1,
    in_progress: 2,
    completed: 3,
    cancelled: 4
  }
end
