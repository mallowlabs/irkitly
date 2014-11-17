class DevicesController < ApplicationController
  before_action :set_device, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @devices = current_user.devices
    respond_with(@devices)
  end

  def show
    respond_with(@device)
  end

  def new
#    @device = Device.new
#    respond_with(@device)
  end

  def edit
  end

  def create
    irkitJson = IrkitJson.new(params[:json])
    @device = Device.new(irkitJson.device)
    @device.user = current_user
    @device.infrareds = irkitJson.infrareds.map do |ir|
      infrared = Infrared.new(ir)
      infrared.save
      infrared
    end
    @device.save
    respond_with(@device)
  end

  def update
    @device.update(device_params)
    respond_with(@device)
  end

  def destroy
    @device.destroy
    respond_with(@device)
  end

  private
    def set_device
      @device = Device.find(params[:id])
    end

    def device_params
      params.require(:device).permit(:user_id, :name, :deviceid, :clientkey)
    end
end
