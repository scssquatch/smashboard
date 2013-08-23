class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_offices_and_projects

  def set_offices_and_projects
    @offices = Office.all
    @projects = Project.all
  end
end
