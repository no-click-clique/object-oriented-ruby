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
    puts @salary
    @salary = 1.05 * @salary
    puts @salary
  end
end

employee1 = Employee.new({last_name: "Kafati", salary: 80000, active: true, first_name: "Tori"})
employee2 = Employee.new(first_name: "Benji", last_name: "Pang", salary: 70000, active: true)


class Manager < Employee
  attr_accessor :employees
  
  def initialize(input_hash)
    super
    @employees = input_hash[:employees]
  end

  def send_report
    puts "Sending email..."
    # some fancy lirary would actually do this
    puts "Email sent!"
  end
end

manager = Manager.new(first_name: "Jeneen", last_name: "LeMar", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
