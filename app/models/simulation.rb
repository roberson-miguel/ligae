class Simulation < ApplicationRecord

  def calculate_without_plan(tax_price_plan, tax_amount_user)
    without_plan = tax_amount_user.to_i * tax_price_plan 
  end

  def calculate_with_plan(tax_amount_user, tax_price_surplus, tax_amount_min)
    if tax_amount_user.to_i <= tax_amount_min
      with_plan = 0.0
    else 
      with_plan = (tax_amount_user.to_i - tax_amount_min) * tax_price_surplus
    end
  end

end
