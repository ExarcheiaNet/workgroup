class ProjectsController < ApplicationController
  before_filter :authenticated

  def create
    project = Project.new(project_params)
    if project.save
      current_user.projects << project
    else
      flash[:error] = "Project failed to save"
    end      
    
    redirect_to user_projects_path(current_user)
  end

  def index
    @projects = current_user.projects.where(parent_id: nil).includes(:children)
    render :index
  end

  def show
    @project = Project.find(params[:id])
    render :show
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
    else
      flash[:error] = "Project failed to save"
    end
    
    render :show
  end


  def authenticated 
    puts "!!!!!! authin !!!!"
  end

  private 

  def project_params
    params.require(:project).permit(
      :user_id, 
      :name, 
      {user_ids: []}
    )
  end
end