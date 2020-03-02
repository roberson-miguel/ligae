class TaxesController < ApplicationController

  before_action :set_find, only: [:show, :edit, :update, :destroy]
      
  def index
    @taxes = Tax.all
  end

  def show  
  end

  def edit
    @taxes = Tax.all
  end

  def new
    @tax = Tax.new
  end

  def create
    @tax = Tax.new(tax_params)
    @tax.price_surplus = @tax.calculate_price_surplus
 
    if @tax.save
      flash[:notice] = 'Plano criado com sucesso'
      redirect_to @tax
    else
      flash[:alert] = 'Erro'
      render :new
    end
    
  end

  def update
    if @tax.update(tax_params)
      redirect_to @tax
    else
      render :edit
    end
  end
end

private

  def tax_params
    params.require(:tax).permit(:ddd_origin, :ddd_destiny, :amount_min, :name_plan, :price_plan, :price_surplus)
  end

  def set_find
    @tax = Tax.find(params[:id])
  end
