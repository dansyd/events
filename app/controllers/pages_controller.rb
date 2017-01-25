class PagesController < ApplicationController
  def index
    @events = Event.upcoming.limit(4)
  end
end
