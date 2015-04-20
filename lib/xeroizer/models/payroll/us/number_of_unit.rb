module Xeroizer
  module Record
    module Payroll
      module US

        class NumberOfUnitModel < PayrollArrayBaseModel

        end

        class NumberOfUnit < PayrollArrayBase

          decimal :value

        end

      end
    end
  end
end
