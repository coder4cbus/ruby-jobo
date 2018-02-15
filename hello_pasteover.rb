require "./hello"

module Payroll
  class Employee
    include Hello
    attr_accessor :name

    def initialize(name, pay_rate)
      @name = name
      @pay_rate = pay_rate
    end
  end

  class HourlyEmployee < Employee
    def pay(hours)
      hours * @pay_rate
    end
  end

  class SalariedEmployee < Employee
    def pay
      @pay_rate / 26
    end
  end
end

emp_1 = Payroll::HourlyEmployee.new("John Smith", 15.87)

puts "#{emp_1.name} is getting paid #{emp_1.pay(38)} for 40 hours"

puts emp_1.say_hello

emp_4 = Payroll::SalariedEmployee.new("Erin Swindell", 48000)

puts "#{emp_4.name} is getting paid #{emp_4.pay}"
