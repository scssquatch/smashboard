class ProjectsController < ApplicationController

  def create
    @project = Project.new(project_params)
    render :edit if @project.save
  end

  def edit
    @project = Project.find(params[:id])
    @metrics = @project.metrics
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
  end

  def select
    @current_office = Office.find(params[:office_id])
    Project.find(params[:project_id]).select
  end

  private
  def project_params
    params.require(:project).permit(:name, :offices)
  end

end
