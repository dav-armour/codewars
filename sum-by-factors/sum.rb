def sumOfDivided(lst)
  primes = primes(lst.map(&:abs).max)
  prime_hash = {}
  lst.each do |n|
    primes.each do |prime|
      if n % prime == 0
        prime_hash[prime] = prime_hash[prime] ? prime_hash[prime] + n : n
      end
    end
  end
  prime_hash.sort
end

def primes(end_num)
  numbers = 2..end_num
  primes = [2]
  numbers.each do |number|
    remainder = 0
    primes.each do |prime|
      remainder = number % prime
      break if remainder == 0
    end
    primes << number if remainder != 0
  end
  primes
end
