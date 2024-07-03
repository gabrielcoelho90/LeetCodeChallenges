# @param {String} s
# @param {Integer} num_rows
# @return {String}

s = "PAYPALISHIRING"
def convert(s, num_rows)
  # criar número de arrays de acordo com num_rows
  arrays = []
  num_rows.times do
    arrays << Array.new
  end
  # transformar string em uma array de palavras
  letters = s.chars
  # verificar se número de letras é o suficiente para preencher todas as rows.
  direction = 'cres'
  while letters.size > 0
    if direction == 'cres'
      num_rows.times do |i|
        p i
        if letters[i].nil?
          arrays[i] << ""
        else
          arrays[i] << letters[i]
        end
      end
      letters.slice!(0, num_rows)
      p letters
      direction = 'decres'
      p arrays
    else
      reversed_array = arrays.reverse
      p reversed_array
      (1..num_rows - 2).each do |i|
        reversed_array[i] << letters[i - 1]
      end
      p reversed_array
      direction = 'cres'
      letters.slice!(0, num_rows - 2)
    end
  end
  p arrays
  p arrays.flatten.join.lstrip
end

convert(s, 4)
