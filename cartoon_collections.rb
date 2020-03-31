def square_array(array)
  # Use an Enumerable to square every element in the passed in array
  # Return a new array of the results
  
  # array.map do |element|
  #   element * element
  # end
  
  array.map { |elem| elem * elem }
  
end

def summon_captain_planet(planeteer_calls)
  # Use an Enumerable to capitalize and add '!' to every element in the passed in array
  # Return a new array of the results
  
  # planeteer_calls.map {|element| "#{element.capitalize}!"}
  
  planeteer_calls.map { |call| call.capitalize + '!' }
  
end

def long_planeteer_calls(planeteer_calls)
  # Use an Enumerable to check if any string in the passed in array is greater than 4 characters long
  # Return the boolean result of this check
  
  planeteer_calls.any? {|element| element.length > 4}
  
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found

  # 1 index = 0 
  #   while index < valid_calls.length do
  #     if planeteer_calls.find {|element| element ==     valid_calls[index]}
  #       return valid_calls[index]
  #     end
  #   index += 1 
  #   end

### use if statement because this is AoA so we don't want to just return the result in first element after we need to return the result after finish checking all elements in array after
  
  #2  valid_calls.each do |result|
    
  #     if planeteer_calls.find {|element| element == result}
  #       return result
  #     end
    
  #   end

  #   nil
  
  planeteer_calls.find {|call| valid_calls.include?(call)}
  
end
