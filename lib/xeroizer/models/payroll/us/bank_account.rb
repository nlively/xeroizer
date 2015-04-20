module Xeroizer
  module Record
    module Payroll
      module US

        class BankAccountModel < PayrollUSBaseModel

        end

        class BankAccount < PayrollUSBase

          string :statement_text
          string :account_name
          string :bsb, :api_name => 'BSB'
          string :account_number
          boolean :remainder
          decimal :percentage
          decimal :amount

        end

      end
    end
  end
end
