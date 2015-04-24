module Xeroizer
  module Record
    module Payroll
      module US

        class EarningsTypeModel < PayrollUSBaseModel

        end

        class EarningsType < PayrollUSBase

          string :earnings_type # http://developer.xero.com/payroll-api/types-and-codes/#EarningsTypes
          string :display_name
          string :expense_account_code # http://developer.xero.com/api/Accounts
          string :earnings_category
          string :rate_type # http://developer.xero.com/payroll-api/types-and-codes/#EarningsRateTypes
          string :type_of_units

          guid :earnings_rate_id
          decimal :multiple
          boolean :do_not_accrue_time_off
          boolean :is_supplemental
          decimal :amount

          datetime_utc :updated_date_utc, :api_name => 'UpdatedDateUTC'

          validates_presence_of :earnings_type, :display_name, :expense_account_code,
                                :earnings_category, :rate_type,
                                :type_of_units

        end

      end
    end
  end
end
