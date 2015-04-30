module Xeroizer
  module Record
    module Payroll
      module US

        class EarningsLineModel < PayrollUSBaseModel

        end

        # child of PayTemplate, Payslip, OpeningBalance
        class EarningsLine < PayrollUSBase

          guid :earnings_type_id
          decimal :rate_per_unit
          decimal :units_or_hours

        end

      end
    end
  end
end
