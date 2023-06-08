class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @upcoming_events = Event.sort_by_upcoming_dates
    @events_later_today = Event.sort_by_later_today
  end

  def components
  end
end
