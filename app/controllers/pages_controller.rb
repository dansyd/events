class PagesController < ApplicationController
  def index
    @events = Event.upcoming.limit(3)
  end
end
