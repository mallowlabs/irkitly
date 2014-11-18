class InfraredsController < ApplicationController
  before_action :set_infrared, only: [:show, :edit, :update, :destroy, :post]
  before_action :validate_user

  respond_to :html

  def index
    @infrareds = Infrared.all
    respond_with(@infrareds)
  end

  def show
    respond_with(@infrared)
  end

  def new
    @infrared = Infrared.new
    respond_with(@infrared)
  end

  def edit
  end

  def create
    @infrared = Infrared.new(infrared_params)
    @infrared.save
    respond_with(@infrared)
  end

  def update
    @infrared.update(infrared_params)
    #respond_with(@infrared)
    flash[:notice] = 'IR successfully updated.'
    redirect_to edit_infrared_path(@infrared)
  end

  def destroy
    @infrared.destroy
    respond_with(@infrared)
  end

  def post
    @infrared.post
    flash[:notice] = 'IR successfully sent.'
    redirect_to(:back)
    #respond_with(@infrared)
  end

  private
    def set_infrared
      @infrared = Infrared.find(params[:id])
    end

    def infrared_params
      params.require(:infrared).permit(:device_id, :name, :schedule, :json)
    end

    def validate_user
      return redirect_to :root if current_user.nil?
      return render status: 404 unless @infrared.device.user_id == current_user.id
    end
end
