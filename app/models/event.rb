class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :tickets
  has_rich_text :description
  has_one_attached :event_image
  has_one :description, class_name: 'ActionText::RichText', as: :record
  before_save :nillify_blanks

  geocoded_by :address
  after_validation :geocode

  # constructs a full address variable from multiple address data
  def address
    if self.address_line_1 != nil && self.address_line_2 == nil
      return "#{self.address_line_1}, #{self.city}, #{self.state}"
    elsif self.address_line_2 != nil && self.address_line_1 == nil
      return "#{self.address_line_2}, #{self.city}, #{self.state}"
    else
      return "#{self.address_line_1}, #{self.address_line_2}, #{self.city}, #{self.state}"
    end
  end

  # when sumitting forms, empty inputs will post as '' to the db
  # this them to blank, so as to not intefer with in-app logic.
  def nillify_blanks
    if self.address_line_2.blank?
      self.address_line_2 = nil
    end
    if self.venue.blank?
      self.venue = nil
    end
  end

  # enum for the progress status of events
  enum status: {
    scheduled: 1,
    in_progress: 2,
    completed: 3,
    cancelled: 4
  }

  # updates non-cancelled events statuses based on current time
  # this method is called whenever teh record is 'touched'
  after_find do |event|
    now = DateTime.now
    if event.event_status == 4
      nil
    elsif now < event.start_date
      update_attribute(:event_status, 1)
    elsif now >= event.start_date && DateTime.now < event.end_date 
      update_attribute(:event_status, 2)
    elsif now >= event.end_date 
      update_attribute(:event_status, 3)
    end  
  end

end
