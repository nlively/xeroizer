module Xeroizer
  module Record
    module Payroll
      module US

        class TimesheetEarningsLineModel < PayrollUSBaseModel

        end

        # child of Payslip
        class TimesheetEarningsLine < PayrollUSBase

          guid :earnings_rate_id
          decimal :number_of_units
          decimal :rate_per_unit

        end

      end
    end
  end
end
