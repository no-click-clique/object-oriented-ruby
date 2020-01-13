require "./employee.rb"
require "./email_reportable.rb"

module Actualize
  class Manager < Employee
    include EmailReportable
    attr_accessor :employees

    def initialize(input_hash)
      super
      @employees = input_hash[:employees]
    end

    def give_all_raises
      employees.each do |employee|
        p employee.give_annual_raise
      end
    end

    def fire_all_employees
      employees.each do |employee|
        p employee.active = false
      end
    end
  end
end

