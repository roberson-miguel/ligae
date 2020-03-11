class HomeController < ApplicationController
  def index
    @taxes = Tax.all
  end
end
