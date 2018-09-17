class RomanNumerals

  @value_hash = {
    'I' => 1,
    'IV' => 4,
    'V' => 5,
    'IX' => 9,
    'X' => 10,
    'XL' => 40,
    'L' => 50,
    'XC' => 90,
    'C' => 100,
    'CD' => 400,
    'D' => 500,
    'CM' => 900,
    'M' => 1000
  }

  class << self
    def to_roman(number)
      number = number
      string = ""
      @value_hash.values.reverse.each do |val|
        n = number / val
        if n > 0
          string += @value_hash.key(val) * n
          number %= val
        end
      end
      string
    end

    def from_roman(string)
      value = 0
      chars_array = string.chars
      i = 0
      while i < chars_array.length
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

