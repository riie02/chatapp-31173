class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def index
  end

  def new
    @messages = Message.all
    @message = Message.new
    #@user = User.find
  end

  def create
    @user = current_user
    @message = Message.new(message_params)
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message, user: @user
    end
  end

  private
  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id)
  end
end
