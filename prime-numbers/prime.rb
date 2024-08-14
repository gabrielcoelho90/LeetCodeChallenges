# given a number, split it in prime numbers and sum then at the end.
# keep doing that until the new number can't be splited anymore.

def smallest_prime(n)
  new_number = n
  until is_prime?(new_number)
    prime_num = []
    new_number = reduce_number(new_number, prime_num)
  end
  new_number
end

def is_prime?(n)
  if n == 4
    true
  else
    (2..(n - 1)).each do |number|
      return false if n % number == 0
    end
    true
  end

end

arr = []
def reduce_number(n, arr)
  if is_prime?(n)
    arr << n
  else
    (2..(n - 1)).each do |num|
      if n % num == 0
        arr << num
        n = n / num
        return reduce_number(n, arr)
      end
    end
  end
  arr.sum
end
