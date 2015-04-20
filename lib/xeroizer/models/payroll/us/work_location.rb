module Xeroizer
  module Record
    module Payroll
      module US

        class WorkLocationModel < PayrollUSBaseModel

          set_permissions :read, :write, :update

        end

        class WorkLocation < PayrollUSBase

          set_primary_key :work_location_id

          guid :work_location_id
          string :street_address
          string :suit_or_apt_or_unit, :internal_name => :unit
          string :city
          string :state
          decimal :latitude
          decimal :latitude
          boolean :is_primary

        end

      end
    end
  end
end
