module PrimeNumberGenerator 
def generate(startingValue,endingValue)
  result = Array.new
  if startingValue <= endingValue
    while startingValue <= endingValue
      if(isPrime(startingValue))
        result.push(startingValue)
      end
      startingValue += 1
    end
  else
    while  startingValue >= endingValue
      if(isPrime(startingValue))
        result.push(startingValue)
      end
      startingValue -= 1
    end
  end
  return result.join(", ")
end

  def isPrime(n)
    return false if n < 2 
    return true  if n == 3 || n == 2 
    for i in 2..n-1
      if n % i == 0
        return false
      end
    end
    return true
  end
end

class PrimeNumberCollection
  extend PrimeNumberGenerator
  
  puts "Enter start number(numeric value):" 
  start_number = gets.chomp

  puts "Enter end number(numeric value):"
  end_number = gets.chomp
    if start_number =~ /^-?[0-9]+$/ && end_number =~ /^-?[0-9]+$/ 
      results = generate(start_number.to_i,end_number.to_i)
      if(results.length >0)
        puts "Prime Numbers between #{start_number} to #{end_number} = #{results}" 
      else
        puts "No Prime Numbers between #{start_number} to #{end_number}"
      end
    else
      puts "Enter the valid numeric input!!!" 
    end
  
end

c1 = PrimeNumberCollection.new

