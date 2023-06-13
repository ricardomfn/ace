module ChatroomsHelper
  def other_chatroom_user(chatroom)
    chatroom.users.where.not(id: current_user.id).first
  end
end
