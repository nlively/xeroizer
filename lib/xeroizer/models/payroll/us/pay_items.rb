module Xeroizer
  module Record
    module Payroll
      module US

        class PayItemModel < PayrollUSBaseModel

          set_permissions :read, :write, :update

          set_standalone_model true
          set_xml_root_name 'PayItems'
          set_xml_node_name 'PayItems'
        end

        class PayItem < PayrollUSBase

          set_primary_key false

          has_many :earnings_rates
          has_many :deduction_types
          has_many :leave_types
          has_many :reimbursement_types

        end

      end
    end
  end
end
