module Xeroizer
  module Record
    module Payroll
      module US

        class LeavePeriodModel < PayrollUSBaseModel

        end

        class LeavePeriod < PayrollUSBase

          decimal :number_of_units
          date :pay_period_start_date
          date :pay_period_end_date
          string :leave_period_status

        end

      end
    end
  end
end
