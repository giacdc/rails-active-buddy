class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
    if params[:keyword].present?
      @keyword = params[:keyword]
    elsif params[:query].present?
      @keyword = params[:query][:keyword]
    else
      nil
    end

    @events = Event.search_event_sport(@keyword) if @keyword.present?

    @events = @events.select  { |event| event.start_date > DateTime.now }

    @events = @events.sort_by { |event| event.start_date }

    if params[:query].present?
      if params[:query][:start_date].present?
        @events = @events.select { |event| event.start_date >= DateTime.parse(params[:query][:start_date].split(" to ").first) }
      end
      if params[:query][:end_date].present?
        @events = @events.select { |event| event.start_date <= DateTime.parse(params[:query][:start_date].split(" to ").last) }
      end
      if params[:query][:sport_category].present?
        @events = @events.select { |event| event.sport.sport_category.id == params[:query][:sport_category].to_i }
      end
      if params[:query][:next_two_hours] == "1"
        @events = @events.select { |event| event.start_date > DateTime.now && event.start_date < DateTime.now + 7.hours }
      end
      if params[:query][:is_indoor] == "1"
        @events = @events.select { |event| event.is_indoor == true }
      end
    end

    @geocoded_events = @events.reject { |event| event.latitude.nil? }
    @markers = @geocoded_events.map do |event|
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
    @booking = Booking.find_by(user: current_user, event: @event)

    @markers = [{ lat: @event.latitude, lng: @event.longitude, event_window_html: render_to_string(partial: "event_window", locals: {event: @event}), marker_html: render_to_string(partial: "marker", locals: {event: @event}) }]
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    authorize @event
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @event = Event.new
    authorize @event
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
      Chatroom.create!(event: @event, creator: @event.event_creator)
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
