class DashboardController < ApplicationController
  def index
    @projects = Project.all
    @offices = Office.all
  end
end
