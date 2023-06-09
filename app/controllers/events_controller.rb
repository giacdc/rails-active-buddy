class EventsController < ApplicationController

  def index
    @events = policy_scope(Event)
    @events = Event.search_event_sport(params[:query]) if params[:query].present?
  end

  def show
    authorize @event
  end

  def edit
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def update
    authorize @event
  end

  def destroy
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.event_creator = current_user
    authorize @event
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :user_id, :sport_id, :start_date, :end_date, :cost, :max_participants, :address, :is_indoor)
  end
end
