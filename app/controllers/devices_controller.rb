class DevicesController < ApplicationController
  before_action :set_device,only: [:show, :update, :destroy]#,:comments ]
  def show
    render json: @device
  end
  def index
    @devices = Device.all
    render json: @devices
  end
  # def comments
  #   @comments = @article.comments
  #   render json: @comments
  # end
  def create
    @device = Device.new(device_params)
    if @device.save
      render json: @device,status: :created,location: @device
    else
      render json: @device.errors,status: :unprocessable_entity
    end
  end
  def update
    if @device.update(device_params)
      render json: @device
    else
      render json: @device.errors,status: :unprocessable_entity
    end
  end
  def destroy
    @device.destroy
    render json: @device
  end
  private
  def set_device
    @device = Device.find(params[:id])
  end
  def device_params
    params.require(:device).permit(:device_type,:employee_id)
  end
end
