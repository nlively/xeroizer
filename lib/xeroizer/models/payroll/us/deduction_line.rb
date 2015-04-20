module Xeroizer
  module Record
    module Payroll
      module US

        class DeductionLineModel < PayrollUSBaseModel

        end

        # child of PayTemplate
        class DeductionLine < PayrollUSBase

          guid :deduction_type_id
          string :calculation_type # http://developer.xero.com/payroll-api/types-and-codes#DeductionTypeCalculationType

          decimal :percentage
          decimal :amount

        end

      end
    end
  end
end
