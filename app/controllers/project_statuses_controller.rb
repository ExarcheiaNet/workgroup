class ProjectStatusesController < ApplicationController
  def create
    status = ProjectStatus.new(status_params)
    if status.save
      redirect_to user_project_path(current_user, status.project)
    else
      redirect_to user_project_path(current_user, params[:project_id]),  flash: {errors: status.errors}
    end      
  end

  private 

  def status_params
    params.require(:project_status).permit(:user_id, :project_id, :text)
  end
end