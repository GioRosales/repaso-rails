class StatesController < ApplicationController
  def semaphores
    @state = State.find(params[:id])
  end
end