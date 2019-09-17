module Luhn
    def self.is_valid?(cc_number)
        single_digits = cc_number.to_s.split('')
        luhn_number = single_digits.reverse
        sum, i = 0, 0
            luhn_number.each_with_index do |x, i|
                ccn    = x.to_i
                ccn   *= 2 if i.odd?
                ccn    = 1 + (ccn - 10) if ccn >= 10
                sum   += ccn
            end
            puts sum
            if (sum % 10).zero?
            return true 
        else
            return false
        end
    end
end