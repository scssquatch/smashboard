class OfficesController < ApplicationController
  def open
    @current_office = Office.find(params[:id])
  end
end
