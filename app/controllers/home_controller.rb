class HomeController < ApplicationController
  def index
    @ddds = Ddd.all
    @taxes = Tax.all
  end
end
