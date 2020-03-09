class Simulation < ApplicationRecord

  def price_simulation(diff_plan: 0, with_plan: 0.0, without_plan: 0.0)
    @diff_plan = diff_plan
    @with_plan = without_plan
    @without_plan = without_plan
    if amount_user <= amount_min
      @with_plan = 0.0
      @without_plan = price_plan.to_f * amount_user
    else
      @diff_plan = amount_user.to_i - amount_min.to_i
      @with_plan = diff_plan * price_surplus
      @without_plan = price_plan * amount_user
    end
  end

end
