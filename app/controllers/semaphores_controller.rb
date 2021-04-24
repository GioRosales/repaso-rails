class SemaphoresController < ApplicationController
  before_action :get_semaphore, only: [:show, :edit, :update]
  def index
    @semaphores = Semaphore.all
  end

  def new
    @semaphore = Semaphore.new
  end

  def create
    @semaphore = Semaphore.create!(semaphore_params)
    redirect_to @semaphore
  end

  def show
  end

  def edit
  end

  def update
  end

  private
  def semaphore_params
    params.require(:semaphore).permit(:state_id, :color, :start)
  end

  def get_semaphore
    @semaphore = Semaphore.find(params[:id])
  end
end
