module Xeroizer
  module Record
    module Payroll
      module US

        class AccountModel < PayrollUSBaseModel

          set_permissions :read

        end

        class Account < PayrollUSBase

          string :type
          string :code
          string :name
          guid :account_id
        end

      end
    end
  end
end
