module Xeroizer
  module Record
    module Payroll
    
      class PayScheduleModel < PayrollBaseModel
          
        set_permissions :read, :write
          
      end
      
      class PaySchedule < PayrollBase
        
        set_primary_key :pay_schedule_id

        guid          :pay_schedule_id

        string        :name
        string        :schedule_type # http://developer.xero.com/documentation/payroll-api-us/types-codes#ScheduleType
        date          :start_date
        date          :payment_date
  
        validates_presence_of :name, :schedule_type, :start_date, :payment_date

      end

    end 
  end
end
