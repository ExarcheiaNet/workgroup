class GroupStatusesController < ApplicationController
  def create
    status = GroupStatus.new(status_params)
    if status.save
      redirect_to user_group_path(current_user, status.group)
    else
      redirect_to user_group_path(current_user, params[:group_id]),  flash: {errors: status.errors}
    end      
  end

  private 

  def status_params
    params.require(:group_status).permit(:user_id, :group_id, :text)
  end
end