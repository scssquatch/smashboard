class DashboardController < ApplicationController
  def index
    @project = Project.new
  end
end
