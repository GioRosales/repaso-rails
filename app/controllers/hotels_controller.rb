class HotelsController < ApplicationController
  before_action :get_hotel, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  # Acciones
  def index
    @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.create(hotels_params)
    redirect_to hotel_path(@hotel.id)
  end

  def show
  end
  
  def edit
  end
  
  def update
    @hotel.update(hotels_params)
    redirect_to hotel_path(@hotel.id)
  end
  
  def destroy
    @hotel.destroy
    redirect_to hotels_path
  end

  private

  def get_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotels_params
    params.require(:hotel).permit(:name, :stars)
  end
  # {
  #   hotel: {
  #     name: "some value", -
  #     stars: "4", -
  #     address: "asbdabsdbasd", 
  #   }
  # }
  # {name: "some value", stars: "4", pemitted: true}
end