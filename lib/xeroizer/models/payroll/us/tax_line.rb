module Xeroizer
  module Record
    module Payroll
      module US

        class TaxLineModel < PayrollUSBaseModel

        end

        # http://developer.xero.com/documentation/payroll-api/payslip/#TaxLine
        class TaxLine < PayrollUSBase

          string :tax_type_name
          string :description
          string :liability_account

          decimal :amount

          guid :payslip_tax_line_id

        end

      end
    end
  end
end
