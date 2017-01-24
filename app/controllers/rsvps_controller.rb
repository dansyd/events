class RsvpsController < ApplicationController

  def create
    @current_user.rsvps.create :event_id => params[:event_id], :status => params[:status]
    redirect_to request.referer
  end

  def update

  end

  def destroy

  end

end
