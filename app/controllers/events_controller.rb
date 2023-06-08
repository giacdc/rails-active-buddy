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
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
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

# t.string "title"
#     t.text "description"
#     t.bigint "user_id", null: false
#     t.bigint "sport_id", null: false
#     t.datetime "start_date"
#     t.datetime "end_date"
#     t.integer "cost"
#     t.integer "max_participants"
#     t.float "latitude"
#     t.float "longitude"
#     t.string "address"
#     t.boolean "is_indoor"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
