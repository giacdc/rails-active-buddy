class EventsController < ApplicationController

  def index
    @events = policy_scope(Event)
    @events = Event.search_event_sport(params[:query]) if params[:query].present?
  end

  def show
  end

  def edit
  end

  def new
  end
end
