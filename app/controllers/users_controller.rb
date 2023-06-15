class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
    @events = @user.events
    @booked_events = @user.booked_events
    @my_upcoming_events = @user.events.where(start_date: Date.today..)
    @my_upcoming_booked_events = @user.booked_events.joins(:bookings).where(start_date: Date.today.., bookings: {is_accepted: true})
    @my_pending_bookings = @user.booked_events.joins(:bookings).where.not(bookings: {is_accepted: true}).where(start_date: Date.today..)
    @my_past_events_and_bookings = @user.events.where(end_date: ..Date.today - 1) + @user.booked_events.joins(:bookings).where(bookings: {is_accepted: true}, end_date: ..Date.today - 1)
  end
end
