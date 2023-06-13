class ChatroomsController < ApplicationController
  def chatroom
    @user = User.find(params[:user_id])

    if current_user.chat_with?(@user)
      @chatroom = current_user.chatroom_with(@user)
    else
      @chatroom = Chatroom.create
      UserChatroom.create(user: @user, chatroom: @chatroom)
      UserChatroom.create(user: current_user, chatroom: @chatroom)
    end

    @message = Message.new
  end
end
