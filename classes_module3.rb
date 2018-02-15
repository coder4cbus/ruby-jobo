module Hello
def say_hello
puts "Hello!"
end

module Payroll
  class Employee
  include Hello
  # superclass is employee
  attr_accessor :name
    def initialize(name, pay_rate)
      @name = name
      @pay_rate = pay_rate
    end
  end


  class HourlyEmployee < Employee
  # hourly employee inherits from the larger superclass of Employee
    def pay(hours)
      hours * @pay_rate
    end

  private
  def with_taxes(rate)
    rate * 0.07
  end
  # private does not get indented and restricts use of the method to within this section and cannot be pulled out and used elsewhere.
  end

  class SalariedEmployee < Employee
    def pay
      @pay_rate / 26
    end
  end
end
emp_1 = Payroll::HourlyEmployee.new("John Smith", 15.87)

puts "#{emp_1.name} is getting paid #{emp_1.pay(38)} for 40 hours"

emp_4 = Payroll::SalariedEmployee.new("Erin Swindell", 48000)

puts "#{emp_4.name} is getting paid #{emp_4.pay}"

# Payroll module is only needed where creating a new employee outside of the module and corresponding end
