class Tax < ApplicationRecord

  scope :simulation_user, -> (ddd_origin, ddd_destiny){
    where('ddd_origin like ? AND ddd_destiny like ?', ddd_origin, ddd_destiny)}

  def calculate_price_surplus
    if amount_min.to_i > 1
      price_surplus = price_plan * 1.1
    else
      price_surplus = price_plan
    end
  end

end
