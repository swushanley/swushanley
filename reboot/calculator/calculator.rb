# implement a method calculator
def calculator(first_number, second_number, operator)
  case operator
  when "+"
    result = first_number + second_number
  when "-"
    result = first_number - second_number
  when "x"
    result = first_number * second_number
  when "/"
    result = first_number / second_number
  else
    puts "invalid operator"
  end
  return result
end
