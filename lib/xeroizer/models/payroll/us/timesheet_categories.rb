module Xeroizer
  module Record
    module Payroll
      module US

        class TimesheetCategoriesModel < PayrollUSBaseModel

          set_standalone_model true
          set_xml_root_name 'TimesheetCategories'
          set_xml_node_name 'TimesheetCategories'
        end

        # child of TrackingCategories
        class TimesheetCategories < PayrollUSBase

          set_primary_key false

          guid :tracking_category_id
          string :tracking_category_name

        end

      end
    end
  end
end
