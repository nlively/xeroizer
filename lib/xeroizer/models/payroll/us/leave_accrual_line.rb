module Xeroizer
  module Record
    module Payroll
      module US

        class LeaveAccrualLineModel < PayrollUSBaseModel

        end

        # http://developer.xero.com/documentation/payroll-api/payslip/#LeaveAccrualLine
        class LeaveAccrualLine < PayrollUSBase
          decimal :number_of_units

          boolean :auto_calculate

          guid :leave_type_id

        end

      end
    end
  end
end
