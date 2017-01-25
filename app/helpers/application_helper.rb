module ApplicationHelper

  def create_rsvp_options_link(label, status, event, action)
    link_to label, event_rsvps_path(event, :status => status, :action => action), :method => 'post'
  end

end
