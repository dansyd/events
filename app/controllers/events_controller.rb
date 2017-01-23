class EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find params[:id]
  end

  def edit
    @event = Event.find params[:id]
  end

  def update
    event = Event.find params[:id]
    raise params.inspect
    event.update event_params
    redirect_to edit_user_path(@current_user)
  end


  private

  def event_params
    params.require(:event).permit(:name, :location, :start_datetime, :end_datetime, :description)
  end
end
