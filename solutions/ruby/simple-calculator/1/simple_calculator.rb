

class ArgumentError < StandardError
end

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
  class UnsupportedOperation < StandardError
  end
  
  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation if !operation.is_a?(String) 
    raise UnsupportedOperation if operation.empty?
    raise UnsupportedOperation if !ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer) && operation.is_a?(String)

    begin
      result = first_operand.public_send(operation,second_operand)
      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError => _
      'Division by zero is not allowed.'
    end
  end
end

#p SimpleCalculator.calculate('1', 2, '+')