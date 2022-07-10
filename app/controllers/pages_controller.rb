class PagesController < ApplicationController

  before_action :get_upcoming_events, only: %i[ calendar ]
  before_action :get_event_months, only: %i[ calendar ]


  def home
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
    @months = [ 'January', 'February', 'March', 'April', 'May',
      'June', 'July', 'August', 'September', 'October', 'November', 'December']
    @current_month = DateTime.now.month - 1

  end

  def booking_success
    @event = Event.find_by(id: params[:id])
    @event_location = @event.venue ? @event.venue : @event.address
    @event_date = @event.start_date.strftime("%a %-d %b %Y")
    @event_time = @event.start_date.strftime("%I:%M%p")
    @is_over_18 = 18 < ((Time.zone.now - current_user.date_of_birth.to_time) / 1.year.seconds).floor
  end

  private

  
    def get_upcoming_events
      @event_ids = current_user.bought_tickets.pluck(:event_id).uniq
      @upcoming_events = Event.where(id: @event_ids, start_date: DateTime.now..(DateTime.now + 1.year))
    end

    def get_event_months
      @event_months = (1..12).map {[]}

      @upcoming_events.each do |event|
        month_int = event.start_date.month.to_i
        @event_months[month_int - 1] << event
      end 
    end

end
