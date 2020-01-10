module EmailReportable
  def send_report
    puts "Sending email..."
    # some fancy lirary would actually do this
    puts "Email sent!"
  end
end

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_hash)
    @first_name = input_hash[:first_name]
    @last_name = input_hash[:last_name]
    @salary = input_hash[:salary]
    @active = input_hash[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({last_name: "Kafati", salary: 80000, active: true, first_name: "Tori"})
employee2 = Employee.new(first_name: "Benji", last_name: "Pang", salary: 70000, active: true)


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

manager = Manager.new(first_name: "Jeneen", last_name: "LeMar", salary: 100000, active: true, employees: [employee1, employee2])

class Intern < Employee
  include EmailReportable
end

intern = Intern.new(first_name: "Christine", last_name: "Redhead", salary: 30000, active: true)
intern.print_info
intern.send_report