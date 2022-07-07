class PagesController < ApplicationController
  def home
    @featured_events = Event.where(id: [6, 11])
  end

  def about
  end

  def mission
  end

  def help
  end
  
  def host
  end

  def wallet
  end

  def calendar
  end

  def booking_success
  end

end
