require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new({last_name: "Kafati", salary: 80000, active: true, first_name: "Tori"})
employee2 = Actualize::Employee.new(first_name: "Benji", last_name: "Pang", salary: 70000, active: true)
employee1.print_info
employee2.print_info
puts employee2.first_name
puts employee2.last_name
puts employee2.salary
puts employee2.active
employee2.active = false
puts employee2.active

manager = Actualize::Manager.new(first_name: "Jeneen", last_name: "LeMar", salary: 100000, active: true, employees: [employee1, employee2])

intern = Actualize::Intern.new(first_name: "Christine", last_name: "Redhead", salary: 30000, active: true)
intern.print_info
intern.send_report