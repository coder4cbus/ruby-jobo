class HourlyEmployee

  attr_accessor :name
  # calling method at class level, see grayed out portions below

  def initialize(name, pay_rate)
    @name = name
    @pay_rate = pay_rate
  end

  def pay(hours)
    hours * @pay_rate
  end

  # def name
  #   @name
  # end
end

class SalariedEmployee
  attr_accessor :name

  def initialize(name, pay_rate)
    @name = name
    @pay_rate = pay_rate
  end

  def pay
    @pay_rate / 26
  end

  # def name
  #   @name
  # end
end

emp_1 = HourlyEmployee.new("John Smith", 15.87)

puts "#{emp_1.name} is getting paid #{emp_1.pay(38)} for 40 hours"

emp_4 = SalariedEmployee.new("Erin Swindell", 48000)

puts "#{emp_4.name} is getting paid #{emp_4.pay}"
