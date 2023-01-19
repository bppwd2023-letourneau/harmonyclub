class Web::EventsController < ApplicationController
  def calendar
    @events = Event.all
  end

end
