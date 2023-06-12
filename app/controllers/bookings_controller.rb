class BookingsController < ApplicationController
  before_action :set_event, only: %i[create]

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.event = @event
    authorize @booking
    if @booking.save
      redirect_to event_path(@event)
  # CHANGE THE PATH TO THE CORRECT PAGE
    else
      render new
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
