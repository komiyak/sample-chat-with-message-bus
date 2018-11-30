class MessageForController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    @messages = Message.where(user: @user).order(id: :desc)
  end
end
