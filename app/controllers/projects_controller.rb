class ProjectsController < ApplicationController

  def create
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
  end

  def select
    @current_office = Office.find(params[:office_id])
    Project.find(params[:project_id]).select
  end

end
