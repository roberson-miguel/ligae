class SimulationsController < ApplicationController
  before_action :set_find, only: %i[show edit update destroy]
  def new
    @taxes = Tax.all
    @simulation = Simulation.new
  end

  def show
    @taxes = Tax.all
    @simulations = Simulation.all
  end

  def create
    @simulation = Simulation.new(simulation_params)
    @simulation.with_plan = @simulation.calculate_with_plan
    @simulation.without_plan = @simulation.calculate_without_plan
    if @simulation.save
      flash[:notice] = 'Simulação executada com sucesso'
      redirect_to @simulation
    else
      flash[:alert] = 'Erro'
      render :new
    end
  end

  def search
    @taxes = Tax.where('ddd_origin like ? AND ddd_destiny like ?', "#{params[:ddd_origin]}", "#{params[:ddd_destiny]}")
    @taxes.each do |tax|
      @tax_price_plan = tax.price_plan
      @tax_amount_min = tax.amount_min
      @tax_amount_user = "#{params[:amount_user].to_i}"
      @tax_price_surplus = tax.price_surplus
      @simulation = Simulation.new
      @simulation.ddd_origin_user = "#{params[:ddd_origin]}"
      @simulation.ddd_destiny_user = "#{params[:ddd_destiny]}"
      @simulation.amount_user = "#{params[:amount_user]}"
      @simulation.with_plan = @simulation.calculate_with_plan(@tax_amount_min, @tax_price_surplus, @tax_amount_user)
      @simulation.without_plan = @simulation.calculate_without_plan(@tax_price_plan, @tax_amount_user)
      @simulation.save
    end
  end

 private

  def simulation_params
    params.require(:simulation).permit(:amount_user, :ddd_origin_user, :ddd_destiny_user, :diff_plan, :with_plan, :without_plan)
  end

  def set_find
    @simulation = Simulation.find(params[:id])
  end
end