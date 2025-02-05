class UserController < ApplicationController
  def show
    @events = User.find(params[:id]).events

    render "event/index"
  end
end
