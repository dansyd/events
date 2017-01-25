class RsvpsController < ApplicationController

  def create
    rsvp = @current_user.rsvps.find_by event_id: params[:event_id]
    if params[:action] == 'destroy'
      rsvp.destroy
      redirect_to :back
    end

    if params[:action] == 'destroy'
      rsvp = Rsvp.new
      rsvp.user_id = @current_user.id
      rsvp.event_id = params[:event_id]
      rsvp.status = params[:status]
    else
      rsvp.status = params[:status]
    end
    if rsvp.save
      redirect_to :back
    else
      flash[:errors] = ''
    end

  end

end
