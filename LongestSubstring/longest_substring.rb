s = "dvdf"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.


def length_of_longest_substring(s)
  substring = []
  lengths = []
  if s == ""
    p 0
  else
    s.each_char do |letter|
      if substring.include?(letter)
        substring = cutt_array(substring, letter)
        lengths << substring.length
        substring << letter
      else
        substring << letter
        lengths << substring.length
      end
    end
    p lengths.max
  end
end

def cutt_array(substring, letter)
  ind = substring.index(letter) + 1
  size = substring.length
  substring[ind..size]
end



length_of_longest_substring(s)


# criar uma array vazia
# ir colocando cada letra dentro, se já tiver a letra, salvo a lenght da array em outra array
# apago a primeira array e continuo o processo até acabar a string
# verifico o maior numero dentro da segunda array
