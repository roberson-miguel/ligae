class Tax < ApplicationRecord
    def calculate_price_surplus
        if amount_min.to_i > 1
            price_surplus = price_plan * 1.1
        else
            price_surplus = price_plan
        end
    end
end
