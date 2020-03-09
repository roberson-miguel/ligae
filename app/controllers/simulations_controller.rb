class SimulationsController < ApplicationController
  before_action :set_find, only: %i[show edit update destroy]
  def new
    @simulation = Simulation.new
  end

  def create
    @simulation = Simulation.new(simulation_params)
    @choice = @simulation.price_simulation
    if @simulation.save
      flash[:notice] = 'Simulação executada com sucesso'
      redirect_to @simulation
    else
      flash[:alert] = 'Erro'
      render :new
    end
  end

  private

  def simulation_params
    params.require(:simulation).permit(:name, :phone, :city, :amount_user)
  end

  def set_find
    @simulation = Simulation.find(params[:id])
  end
end