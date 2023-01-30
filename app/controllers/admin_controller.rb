class AdminController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy]
  
  def panel
    puts "-------------------"
    puts current_user.role
    puts "-------------------"
  end
end
