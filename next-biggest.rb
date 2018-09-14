def next_bigger(n)
  arr = n.digits
  left = []
  arr.each_with_index do |d,i|
    if !left.empty? && d < left[-1]
      new_i = left.select { |x| x > d }.min
      left.delete_at(left.index(new_i))
      left << d
      left.sort!.reverse!
      left << new_i
      return (left + arr[i+1..-1]).reverse.join.to_i
    else
      left << d
    end
  end
  -1
end

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(184987) == 187489