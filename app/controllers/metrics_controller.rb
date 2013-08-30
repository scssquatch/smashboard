class MetricsController < ApplicationController
  def create
    @metric = Metric.new(metric_params)
    @metric.active = true
    @metric.save
  end

  def update
    @metric = Metric.find(params[:id])
    @metric.update_attributes(metric_params)
    @metric.active = true
    render :create
  end

  def destroy
    Metric.find(id: params[:id]).destroy
  end

  private
  def metric_params
    params.require(:metric).permit(:name, :token, :metric_project_id, :username, :project_id)
  end
end
