module Xeroizer
  module Record
    module Payroll
      module US

        class SuperMembershipModel < PayrollUSBaseModel

        end

        # child of Employee
        class SuperMembership < PayrollUSBase

          guid :super_membership_id
          guid :super_fund_id
          string :employee_number

        end

      end
    end
  end
end
