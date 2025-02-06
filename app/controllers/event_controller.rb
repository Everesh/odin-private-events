class EventController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to event_index_path
    else
      puts @event.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.expect(event: [ :title, :date, :place ])
  end
end
