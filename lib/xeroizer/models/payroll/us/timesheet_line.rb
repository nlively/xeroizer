module Xeroizer
  module Record
    module Payroll
      module US

        class TimesheetLineModel < PayrollUSBaseModel

        end

        class TimesheetLine < PayrollUSBase

          guid :earnings_rate_id
          guid :tracking_item_id

          has_array :number_of_units, :api_child_name => 'NumberOfUnit'

          datetime_utc :updated_date_utc, :api_name => 'UpdatedDateUTC'

        end

      end
    end
  end
end
