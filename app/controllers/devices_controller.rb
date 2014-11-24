class DevicesController < ApplicationController
  before_action :set_device, only: [:show, :destroy]
  before_action :validate_user

  respond_to :html

  def index
    @devices = current_user.devices
    return redirect_to new_device_path, notice: 'You need to register your IRKit first.' if @devices.empty?
    respond_with(@devices)
  end

  def show
    respond_with(@device)
  end

  def new
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
    flash[:notice] = 'IRKit successfully register.'
    respond_with(@device)
  end

  def destroy
    @device.destroy
    flash[:notice] = 'IRKit successfully deleted.'
    respond_with(@device)
  end

  private
    def set_device
      @device = Device.find(params[:id])
    end

    def validate_user
      return redirect_to :root if current_user.nil?
      return render status: 404 if @device and @device.user_id != current_user.id
    end
end
