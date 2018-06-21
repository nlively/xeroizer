require 'rubygems'
require 'date'
require 'forwardable'
require 'active_support/inflector'
# require "active_support/core_ext"
require "active_support/core_ext/big_decimal/conversions"
require 'oauth'
require 'oauth/signature/rsa/sha1'
require 'nokogiri'
require 'builder'
require 'time'
require 'bigdecimal'
require 'cgi'

$: << File.expand_path(File.dirname(__FILE__)) 

require 'class_level_inheritable_attributes'
require 'xeroizer/oauth'
require 'xeroizer/scopes'
require 'xeroizer/http_encoding_helper'
require 'xeroizer/http'
require 'xeroizer/exceptions'

require 'xeroizer/record/base_model'
require 'xeroizer/record/payroll_base_model'
require 'xeroizer/record/payroll_us_base_model'
require 'xeroizer/record/payroll_array_base_model'
require 'xeroizer/record/base'
require 'xeroizer/record/payroll_base'
require 'xeroizer/record/payroll_us_base'
require 'xeroizer/record/payroll_array_base'
require 'xeroizer/configuration'

# Include models
['account','address','allocation','branding_theme','bank_transaction','bank_account','contact','contact_group',
  'credit_note','currency','employee','invoice','item','item_purchase_details','item_sales_details',
  'journal','journal_line','line_item','manual_journal','manual_journal_line','option','organisation',
  'payment','phone','tax_rate','tracking_category','tracking_category_child',
  'journal_line_tracking_category', 'user'].each do |model|
    require "xeroizer/models/#{model}"
end

# Include AU payroll models
['home_address', 'bank_account', 'employee', 'timesheet', 'timesheet_line', 'number_of_unit',
  'leave_application', 'leave_period', 'pay_items', 'deduction_type', 'earnings_rate',
  'reimbursement_type', 'leave_type', 'payroll_calendar', 'pay_template', 'super_membership',
  'leave_line', 'reimbursement_line', 'super_line', 'deduction_line', 'earnings_line', 'opening_balance',
  'pay_run', 'settings', 'tracking_categories', 'employee_groups', 'timesheet_categories', 'account',
  'tax_declaration', 'payslip', 'timesheet_earnings_line', 'tax_line', 'leave_accrual_line', 'superannuation_line'].each do |payroll_model|
    require "xeroizer/models/payroll/#{payroll_model}"
end

# Include US payroll models
['home_address', 'bank_account', 'employee', 'timesheet', 'timesheet_line', 'number_of_unit',
 'leave_application', 'leave_period', 'pay_items', 'deduction_type', 'earnings_type',
 'reimbursement_type', 'leave_type', 'pay_schedule', 'pay_template', 'super_membership',
 'leave_line', 'reimbursement_line', 'salary_and_wage', 'super_line', 'deduction_line', 'earnings_line', 'opening_balance',
 'pay_run', 'settings', 'tracking_categories', 'employee_groups', 'timesheet_categories', 'account',
 'tax_declaration', 'payslip', 'timesheet_earnings_line', 'tax_line', 'leave_accrual_line', 'superannuation_line', 'work_location'].each do |payroll_model|
  require "xeroizer/models/payroll/us/#{payroll_model}"
end

require 'xeroizer/report/factory'

require 'xeroizer/response'

require 'xeroizer/generic_application'
require 'xeroizer/public_application'
require 'xeroizer/private_application'
require 'xeroizer/partner_application'
require 'xeroizer/payroll_application'
require 'xeroizer/payroll_us_application'
