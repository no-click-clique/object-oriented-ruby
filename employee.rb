# Represent an employee as an array

# employee1 = ["Tori", "Kafati", 80000, true]
# employee2 = ["Benji", "Pang", 70000, true]
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."


# Represent an employee as a hash

# # hashrocket syntax
# # employee1 = {"first_name" => "Tori", "last_name" => "Kafati", "salary" => 80000, "active" => true}
# # javascript syntax
# employee1 = {first_name: "Tori", last_name: "Kafati", salary: 80000, active: true}
# # symbol syntax
# employee2 = {:first_name => "Benji", :last_name => "Pang", :salary => 70000, :active => true}
# puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."
# puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."



# Represent an employee as a class instance
module Actualize
  class Employee
    attr_reader :first_name, :last_name, :salary, :active
    attr_writer :active

    # this does both attr_reader and attr_writer for every instance variable
    # attr_accessor :first_name, :last_name, :salary, :active

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
end

