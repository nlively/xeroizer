module Xeroizer
  class Scopes
    def self.all_payroll
      ['Employees', 'LeaveApplications', 'PayItems', 'PayrollCalendars', 'PayRuns', 'Payslip', 'SuperFunds', 'Settings', 'Timesheets'].map {|s| "payroll.#{s.downcase}"}.join(',')
    end

    def self.au_payroll
      all_payroll
    end

    def self.us_payroll
      ['Employees', 'Timesheets', 'Settings', 'PayItems', 'PayRuns', 'PaySchedules', 'Paystubs', 'Worklocations'].map {|s| "payroll.#{s.downcase}"}.join(',')
    end

  end
end