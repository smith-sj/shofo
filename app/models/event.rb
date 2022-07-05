class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description
  has_one_attached :event_image
  has_one :description, class_name: 'ActionText::RichText', as: :record

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def address
    if self.address_line_1 != nil && self.address_line_2 == ""
      return "#{self.address_line_1}, #{self.city}, #{self.state}"
    elsif self.address_line_2 != nil && self.address_line_1 == ""
      return "#{self.address_line_2}, #{self.city}, #{self.state}"
    else
      return [self.address_line_1,self.address_line_2,self.city,self.state].compact.join(",")
    end
  end

  enum status: {
    scheduled: 1,
    in_progress: 2,
    completed: 3,
    cancelled: 4
  }

  after_find do |event|
    if event.event_status == 4
      nil
    elsif DateTime.now < event.start_date
      update_attribute(:event_status, 1)
    elsif DateTime.now >= event.start_date && DateTime.now < event.end_date 
      update_attribute(:event_status, 2)
    elsif DateTime.now >= event.end_date 
      update_attribute(:event_status, 3)
    end
  
  end
end
