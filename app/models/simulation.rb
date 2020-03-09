class Simulation < ApplicationRecord

  def calculate_without_plan
    without_plan = amount_user * 1 #price_plan
  end

  def calculate_with_plan 
    if amount_user <= 30 #amount_min
      with_plan = 0.0
    else
      with_plan = calculate_diff_plan * 1.1 #price_surplus
    end
  end

  def calculate_diff_plan
    diff_plan = amount_user - 30 #amount_min
  end

  #def search(search)
  #  @taxes = Tax.where('ddd_origin like ? AND ddd_destiny like ?', "%#{params[:ddd_origin_user]}%", "%#{params[:ddd_destiny_user]}%")
  #end

end
