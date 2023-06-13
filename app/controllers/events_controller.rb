class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
    @events = Event.search_event_sport(params[:keyword]) if params[:keyword].present?
    if params[:start_date].present?
      @events = @events.select { |event| event.start_date == params[:start_date] }
    end
    if params[:end_date].present?
      @events = @events.select { |event| event.end_date == params[:end_date] }
    end
    if params[:sport_category].present?
      @events = @events.select { |event| event.sport.sport_category == params[:sport_category].to_i }
    end
    if params[:now] == true
      @events = @events.select { |event| event.start_date < DateTime.now + 2.hours }
    end
    if params[:is_indoor].present?
      @events = @events.select { |event| event.is_indoor? == params[:is_indoor] }
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {event: event}),
        marker_html: render_to_string(partial: "marker", locals: {event: event})
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
    @event_creator_preferred_sports = @event.event_creator.preferred_sports
  end

  def edit
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def update
    @event.update(event_params)
    authorize @event
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, status: :see_other
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
