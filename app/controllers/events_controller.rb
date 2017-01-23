class EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find params[:id]
  end

  def create
    # raise params.inspect
    # event = Event.new
    event = @current_user.events.new event_params
    if event.save
      redirect_to profile_path
    else
      flash[:error] = ''

    end
  end

  def edit
    @event = Event.find params[:id]
  end

  def update
    event = Event.find params[:id]
    event.update event_params
    redirect_to user_edit_path(@current_user)
  end

  def destroy
    event = Event.find params[:id]
    event.destroy
    redirect_to profile_path
  end


  private

  def event_params
    params.require(:event).permit(:name, :location, :start_datetime, :end_datetime, :description, :user_id)
  end
end
