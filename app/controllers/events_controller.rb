class EventsController < ApplicationController

  def index
    @events = policy_scope(Event)
  end

  def show
  end

  def edit
  end

  def new
  end
end
