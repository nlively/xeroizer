module Xeroizer
  module Record
    module Payroll
      module US

        class HomeAddressModel < PayrollUSBaseModel

        end

        class HomeAddress < PayrollUSBase

          string :address_line1
          string :address_line2
          string :address_line3
          string :address_line4
          string :city
          string :region
          string :postal_code
          string :country

        end

      end
    end
  end
end
