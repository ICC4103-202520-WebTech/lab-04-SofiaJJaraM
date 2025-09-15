class ServiceUsagesController < ApplicationController
  def index
    @service_usages = ServiceUsage.all()
  end

  def show
    @service_usage = ServiceUsage.find(params[:id])
  end
end
