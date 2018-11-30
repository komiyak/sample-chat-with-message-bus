class MessagesController < ApplicationController
  # It's for a investigation.
  protect_from_forgery except: [:create]

  def create
    Message.create!(message_params) do |m|
      m.user = User.find_by!(username: params[:username])
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end