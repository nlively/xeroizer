module Xeroizer
  module Record
    module Payroll
      module US

        class OpeningBalancesModel < PayrollUSBaseModel

          set_standalone_model true
          set_xml_root_name 'OpeningBalances'
          set_xml_node_name 'OpeningBalances'
        end

        # child of Employee
        class OpeningBalances < PayrollUSBase

          set_primary_key false

          date :opening_balance_date
          has_many :earnings_lines
          has_many :deduction_lines
          has_many :super_lines
          has_many :reimbursement_lines
          has_many :leave_lines

        end

      end
    end
  end
end
