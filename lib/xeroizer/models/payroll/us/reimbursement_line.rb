module Xeroizer
  module Record
    module Payroll
      module US

        class ReimbursementLineModel < PayrollUSBaseModel

        end

        # child of PayTemplate
        class ReimbursementLine < PayrollUSBase

          guid :reimbursement_type_id

          string :description
          decimal :amount

        end

      end
    end
  end
end
