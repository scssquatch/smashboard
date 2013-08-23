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
    Project.find(params[:id]).select
  end

  def select_all
    Project.all.map{|proj| proj.update_attribute(:selected, true)}
  end

end
