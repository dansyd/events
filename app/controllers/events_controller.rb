class EventsController < ApplicationController

  def index
    if (params[:start_datetime] == "" && params[:end_datetime] =="") || (params[:start_datetime].nil? && params[:end_datetime].nil?)
      @events = Event.where(['start_datetime > ?', DateTime.now])
    elsif params[:start_datetime] == ""
      @events = Event.where(start_datetime: DateTime.now..params[:end_datetime])
    elsif params[:end_datetime] == ""
      @events = Event.where(['start_datetime > ?', params[:start_datetime]])
    else
      @events = Event.where(start_datetime: params[:start_datetime]..params[:end_datetime])
    end
  end

  def show
    @event = Event.find params[:id]
  end

  def new
    @event = Event.new
  end

  def create
    event = @current_user.events.new event_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      event.image = req["public_id"]
    end
    if event.save
      redirect_to profile_path
    else
      redirect_to new_event_path
    end
  end

  def edit
    @event = Event.find params[:id]
  end

  def update
    event = Event.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      event.image = req["public_id"]
    end
    event.update event_params
    redirect_to profile_path(@current_user)
  end

  def destroy
    event = Event.find params[:id]
    event.destroy
    redirect_to profile_path
  end


  private

  def event_params
    params.require(:event).permit(:name, :location, :start_datetime, :end_datetime, :description, :user_id, :image)
  end
end
