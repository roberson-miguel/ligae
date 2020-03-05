class TaxesController < ApplicationController
  before_action :set_find, only: %i[show edit update destroy]
  def index
    @taxes = Tax.all
  end

  def show
    @taxes = Tax.all
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
    @tax.price_surplus = @tax.calculate_price_surplus
    if @tax.update(tax_params)
      redirect_to @tax
    else
      render :edit
    end
  end

  def destroy
    @tax.destroy
    redirect_to @tax, notice: "Plano excluido com sucesso"
  end

  private

  def tax_params
    params.require(:tax).permit(:ddd_origin, :ddd_destiny, :amount_min,
                                :name_plan, :price_plan, :price_surplus)
  end

  def set_find
    @tax = Tax.find(params[:id])
  end
end
