def coin_machine(amount)
 change_input = {quarter: 0, dime: 0, nickel: 0, penny: 0}
  #will return coin values of change
  coin_values = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  amount = amount.to_i
  coin_values.each { |key, value| while value <= amount
   change_input[key] += 1
  amount = amount - value
end}

change_input.to_s
end
