class PagesController < ApplicationController

  before_action :authenticate_user!, except: %i[ home about help ]
  before_action :get_upcoming_events, only: %i[ calendar ]
  before_action :get_event_months, only: %i[ calendar ]


  def home
    # CURATE FEATURED EVENTS LIST HERE
    @featured_events = Event.where(id: [1, 7, 6, 11])
  end

  def about
  end

  def mission
  end

  def help
  end
  
  def host
  end

  def calendar
    # month array used for ordering the next 12 months from today
    @months = [ 'January', 'February', 'March', 'April', 'May',
      'June', 'July', 'August', 'September', 'October', 'November', 'December']
    # Find current month (-1 because array index)
    @current_month = DateTime.now.month - 1
    # Find next year, for labeling months in calendar that are next year
    @next_year = (Time.now + 1.year).year
  end


  private

    # Create an array of events that user has booked for the following year,
    # ordered by start date.
    def get_upcoming_events
      now = DateTime.now
      @event_ids = current_user.bought_tickets.pluck(:event_id).uniq
      @upcoming_events = Event.where(id: @event_ids, start_date: now..(now + 1.year)).order('start_date')
    end

    # Populate an array of 12 items, where each item is an array that
    # represents a month containing booked events for that month.
    def get_event_months
      @event_months = (1..12).map {[]}

      @upcoming_events.each do |event|
        month_int = event.start_date.month.to_i
        @event_months[month_int - 1] << event
      end 
    end

end
