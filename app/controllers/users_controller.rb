class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
    @events = @user.events
    @booked_events = @user.booked_events
  end
end
