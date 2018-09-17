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
      string = ""
      n = number / 1000
      if n > 0
        string += 'M' * n
        number %= 1000
      end
      n = number / 900
      if n > 0
        string += 'CM'
        number %= 900
      end
      n = number / 500
      if n > 0
        string += 'D'
        number %= 500
      end
      n = number / 400
      if n > 0
        string += 'CD'
        number %= 400
      end
      n = number / 100
      if n > 0
        string += 'C' * n
        number %= 100
      end
      n = number / 90
      if n > 0
        string += 'XC'
        number %= 90
      end
      n = number / 50
      if n > 0
        string += 'L'
        number %= 50
      end
      n = number / 40
      if n > 0
        string += 'XL'
        number %= 40
      end
      n = number / 10
      if n > 0
        string += 'X' * n
        number %= 10
      end
      n = number / 9
      if n > 0
        string += 'IX'
        number %= 9
      end
      n = number / 5
      if n > 0
        string += 'V'
        number %= 5
      end
      n = number / 4
      if n > 0
        string += 'IV'
        number %= 4
      end
      n = number / 1
      if n > 0
        string += 'I' * n
      end
      string
    end

   def from_roman(string)
      value = 0
      chars_array = string.chars
      i = 0
      p chars_array
      p chars_array.length
      while i < chars_array.length
        p i
        cur_val = @value_hash[chars_array[i]]
        if i < chars_array.length - 1
          next_val = @value_hash[chars_array[i + 1]]
          if cur_val >= next_val
            value += cur_val
          else
            value += next_val - cur_val
            i += 1
          end
        else
          value += cur_val
        end
        i += 1
      end
      value
    end

  end
end

