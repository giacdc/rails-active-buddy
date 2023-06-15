class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
  end

  def index
    @chatrooms = policy_scope(Chatroom)
    @chatrooms = @chatrooms.sort_by do |chatroom|
      chatroom.messages.size.positive? ? chatroom.messages.last.created_at : chatroom.created_at
      # chatroom.messages.size.positive? ? chatroom.messages.last.created_at : date_when_current_user_was_added_to_chatroom(chatroom)
    end
    @chatrooms.reverse!
  end

  def date_when_current_user_was_added_to_chatroom(chatroom)
    event_id = chatroom.event.id
    chatroom.event.bookings.where(user: current_user).updated_at
  end
end
