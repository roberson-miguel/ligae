class Simulation < ApplicationRecord

  def calculate_without_plan
    without_plan = amount_user.to_i * 2 # 1 ou price_plan
  end

  def calculate_with_plan
    if amount_user.to_i  <= 30 #amount_min
      with_plan = 0.0
    else
      with_plan = calculate_diff_plan * 1.1 #price_surplus
    end
  end

  def calculate_diff_plan
    diff_plan = amount_user.to_i - 30 #amount_min
  end

end
