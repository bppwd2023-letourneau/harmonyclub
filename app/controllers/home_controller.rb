class HomeController < ApplicationController
  def home
    @events = Event.all
  end
end
