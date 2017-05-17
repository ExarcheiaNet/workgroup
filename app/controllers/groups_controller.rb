class GroupsController < ApplicationController
  before_filter :authenticated

  def create
    group = Group.new(group_params)
    if group.save
      current_user.groups << group
    else
      flash[:error] = "Group failed to save"
    end      
    
    redirect_to user_groups_path(current_user)
  end

  def index
    @groups = current_user.groups
    render :index
  end

  def show
    @group = Group.find(params[:id])
    render :show
  end


  def authenticated 
    puts "!!!!!! authin !!!!"
  end

  private 

  def group_params
    params.require(:group).permit(:user_id, :name)
  end
end