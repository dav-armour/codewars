class RomanNumerals

  @value_hash = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  class << self
    def to_roman(number)
      

    end
    
    def from_roman(string)
      value = 0
      chars_array = string.chars
      i = 0
      while i < chars_array.length
        cur_val = @value_hash[chars_array[i]]
        next_val = @value_hash[chars_array[i + 1]]
        if cur_val >= next_val
          value += cur_val
        else
          value += next_val - cur_val
          i += 1
        end
        i += 1
      end
      value
    end
    
  end
end
