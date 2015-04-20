module Xeroizer
  module Record
    module Payroll
      module US

        class SettingModel < PayrollUSBaseModel

          set_permissions :read

          set_standalone_model true
          set_xml_root_name 'Settings'
          set_xml_node_name 'Settings'
        end

        class Setting < PayrollUSBase

          set_primary_key false

          has_many :accounts
          has_many :tracking_categories, :model_name => 'TrackingCategories'
          has_many :employee_groups, :model_name => 'EmployeeGroups'
          integer :days_in_payroll_year

        end

      end
    end
  end
end
