module Xeroizer
  module Record
    module Payroll
      module US


        class SalaryAndWageModel < PayrollUSBaseModel

        end

        class SalaryAndWage < PayrollUSBase

          SALARY_AND_WAGES_TYPE = {
              'HOURLY' => 'Hourly',
              'SALARY' => 'Salary'
          } unless defined?(SALARY_AND_WAGES_TYPE)

          string :salary_and_wages_type, :internal_name => :type
          guid :salary_and_wage_id, :internal_name => :id
          guid :earnings_type_id
          decimal :hourly_rate
          decimal :annual_salary
          decimal :standard_hours_per_week
          date :effective_date

          validates_inclusion_of :type, :in => SALARY_AND_WAGES_TYPE.keys

        end

      end
    end
  end
end