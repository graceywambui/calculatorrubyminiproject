def add(a, b)
    a + b
  end
  
  def subtract(a, b)
    a - b
  end
  
  def multiply(a, b)
    a * b
  end
  
  def divide(a, b)
    a / b
  end
  
  def calculate(operator, num1, num2)
    case operator
    when '+'
      add(num1, num2)
    when '-'
      subtract(num1, num2)
    when '*'
      multiply(num1, num2)
    when '/'
      divide(num1, num2)
    else
      puts "Invalid operator"
    end
  end
  
  def valid_number?(num)
    Float(num)
    true
  rescue ArgumentError
    false
  end
  
  puts "Welcome to the Calculator App!"
  
  loop do
    puts "Please enter the first number:"
    num1 = gets.chomp
  
    unless valid_number?(num1)
      puts "Invalid input. Please enter a valid number."
      next
    end
  
    puts "Please enter the second number:"
    num2 = gets.chomp
  
    unless valid_number?(num2)
      puts "Invalid input. Please enter a valid number."
      next
    end
  
    puts "Please select an operation (+, -, *, /):"
    operator = gets.chomp
  
    result = calculate(operator, num1.to_f, num2.to_f)
  
    if result.nil?
      puts "Error occurred during calculation."
    else
      puts "Result: #{result}"
    end
  
    puts "Do you want to perform another calculation? (Y/N)"
    break unless gets.chomp.downcase == 'y'
  end
  
  puts "Thank you for using the Calculator App!"
  