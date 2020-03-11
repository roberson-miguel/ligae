class Simulation < ApplicationRecord

  def calculate_without_plan(tax_price_plan, amount_user)
    without_plan = amount_user * tax_price_plan 
  end

  def calculate_with_plan(tax_amount_min, tax_price_surplus, amount_user)
    if amount_user <= tax_amount_min
      with_plan = 0.0 
    else
      with_plan = (amount_user - tax_amount_min) * tax_price_surplus
    end
  end

end
