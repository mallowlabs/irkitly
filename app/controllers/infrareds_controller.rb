class InfraredsController < ApplicationController
  before_action :set_infrared, only: [:edit, :update, :post]
  before_action :validate_user

  respond_to :html

  def edit
  end

  def update
    @infrared.update(infrared_params)
    flash[:notice] = 'IR successfully updated.'
    redirect_to edit_infrared_path(@infrared)
  end

  def post
    @infrared.post
    flash[:notice] = 'IR successfully sent.'
    redirect_to(:back)
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
