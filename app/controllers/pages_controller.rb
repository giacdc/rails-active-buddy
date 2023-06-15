class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :landing]

  def home
    @upcoming_events = Event.sort_by_upcoming_dates
    @events_later_today = Event.sort_by_later_today
    if user_signed_in?
      @buddies = list_all_uniq_buddies
    end
    # @user_age = user_age
  end

  def landing
  end

  def components
  end

  private

  # def user_age
  #   DateTime.now.year - user.date_of_birth.year
  # end

  def list_all_uniq_buddies
    buddies = []
    current_user.bookings.each do |booking|
      buddies << booking.event.event_creator
    end
    current_user.events.each do |event|
      event.bookings.each do |booking|
        buddies << booking.user
      end
    end
    buddies.uniq
  end
end
