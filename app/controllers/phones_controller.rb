class PhonesController < ApplicationController
  # Ejecutar la función get_phone antes de las siguientes acciones:
  # - edit
  # - update
  # - show
  # - destroy
  before_action :get_phone, only: [:edit, :update, :show, :destroy]

  # Acciones
  def index
    @phones = Phone.all
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.create(phone_params)
    redirect_to @phone
  end

  def edit
  end

  def update
    @phone.update(phone_params)
    redirect_to show
  end

  def show
  end

  def destroy
    @phone.destroy
    redirect_to phones_path
  end
  
  private
  # Strong params
  def phone_params
    params.require(:phone).permit(:state_id, :number)
  end

  def get_phone
    @phone = Phone.find(params[:id])
  end
end
