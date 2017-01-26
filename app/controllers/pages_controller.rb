class PagesController < ApplicationController
  def index
    @events = Event.where(['start_datetime > ?', DateTime.now]).upcoming.limit(4)
  end
end
