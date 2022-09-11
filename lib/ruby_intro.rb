
def sum(arr)
  total = 0
  if arr.length() == 0
    return 0
  end
  for num in arr do
    total = total + num
  end
  return total
end

def max_2_sum(arr)
    #handle edge cases
    if arr.length() == 0
        return 0
    end
    if arr.length == 1
        return arr[0]
    end
    #sort, then add the last 2 numbers
    arr = arr.sort
    return arr[-1] + arr[-2]

end

def sum_to_n?(arr, number)
    #this is identical to 2sum
    complements = {}
    for i in 1...arr.length()
        if complements.key?(arr[i])
            return true
        else
            complements[number-arr[i]] = i
        end
    end
    return false
end

def hello(name)
  # YOUR CODE HERE
  s = "Hello, " + name
  return s
end

def starts_with_consonant?(string)
  # handle edge case
  if string.length() == 0
    return false
  end
  if(!string[0].match?(/[[:alpha:]]/))
      return false
  end
  #check for vowels
  vowels = ["A", "E", "I", "O", "U"]
  for char in vowels
      if char == string[0].upcase
          return false
      end
  end

  return true
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length() == 0
   return false
  end
  #convert to int
  num = 0
  for i in 0...string.length()
    reverse_index = (string.length()-1)-i
    #check for invalid characters
    if(string[reverse_index] != "0" and string[reverse_index] != "1")
        return false
    end
    #convert to binary
    num = num + (string[reverse_index].to_i * (2**i.to_i))
  end
  #check if divisible by 4
  if (num % 4) == 0
      return true
  else
      return false
  end
end

class BookInStock
  def initialize(isbn, price)
      if (price <= 0)
        raise ArgumentError
      end
      @price = price
      if (isbn == '')
        raise ArgumentError
      end
      @isbn = isbn
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    return "$%0.2f" % price
  end
end
