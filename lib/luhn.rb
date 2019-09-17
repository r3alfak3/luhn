module Luhn
    def self.is_valid?(cc_number)
        single_digits = cc_number.to_s.split()
        single_digits = []
        luhn_number = single_digits.reverse
        sum, i = 0, 0
            luhn_number.each_with_index do |x|
                ccn    = x.to_i
                ccn   *= 2 if i.odd?
                ccn    = 1 + (ccn - 10) if ccn >= 10
                sum += n
                i   += 1
            end
        if (sum % 10).zero?
            true 
        else
            false
        end
    end
end
