class ProjectsController < ApplicationController
  def index
    @projects = Project.all 
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  private
  #strong params
  def project_params
    params.require(:project).permit(:name, :description, :started_at, :ended_at, :status)
  end
end

