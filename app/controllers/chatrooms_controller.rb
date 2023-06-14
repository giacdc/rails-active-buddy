class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
  end

  def index
    @chatrooms = policy_scope(Chatroom)
  end
end
