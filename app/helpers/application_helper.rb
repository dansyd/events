module ApplicationHelper

  def create_rsvp_options_link(label, status, event, perform_action)
    link_to label, event_rsvps_path(event, :status => status, :perform_action => perform_action), :method => 'post'
  end

end
