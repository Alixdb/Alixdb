def calculate (first_number, operation, second_number)
  if operation == "+"
    result = first_number + second_number
  elsif operation == "-"
    result = first_number - second_number
  elsif operation == "/"
    result = first_number / second_number
  elsif  operation == "*"
    result = first_number * second_number
  else
    result = nil
  end
    return result
  end
