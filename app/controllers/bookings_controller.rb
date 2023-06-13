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

  def update
    @booking = Booking.find(params[:id])
    @booking.is_accepted = true
    @booking.save
    authorize @booking
    redirect_to event_path(@booking.event)
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
