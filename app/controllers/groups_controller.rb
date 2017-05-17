class GroupsController < ApplicationController
  before_filter :authenticated


  def index
    @groups = current_user.groups
    render :index
  end


  def authenticated 
    puts "!!!!!! authin !!!!"
  end
end