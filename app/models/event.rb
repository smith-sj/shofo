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

  after_find do |event|
    return if event.event_status == 4
    if DateTime.now < event.start_date
      update_attribute(:event_status, 1)
    elsif DateTime.now >= event.start_date && DateTime.now < event.end_date 
      update_attribute(:event_status, 2)
    elsif DateTime.now >= event.end_date 
      update_attribute(:event_status, 3)
    end
  end

end
