class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
    @events = Event.search_event_sport(params[:query]) if params[:query].present?
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
  end

  def edit
  end

  def new
  end
end
