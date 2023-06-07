class EventsController < ApplicationController

  def index
    @events = policy_scope(Event)
    @events = Event.search_by_title_and_description(params[:query]) if params[:query].present?
  end

  def show
  end

  def edit
  end

  def new
  end
end
