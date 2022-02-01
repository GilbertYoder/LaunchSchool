def prompt(string)
  puts("==>#{string}")
end

# ASCII String Value
prompt('ASCII String Value')

def ascii_value(string)
  ord_sum = 0
  string_array = string.split('')

  string_array.each do |char|
    ord_sum += char.ord
  end

  return ord_sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# After Midnight (Part 1)
prompt('After Midnight (Part 1)')

def time_of_day(int)
  hours = (int / 60) % 24
  minutes = int % 60
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# After Midnight (Part 2)
prompt('After Midnight (Part 2)')

def after_midnight(time)
  if time == '24:00'
    time = '00:00'
  end
  hours = time[0,2].to_i
  minutes = time[3,2].to_i
  
  hours * 60 + minutes
end

def before_midnight(time)
  if time == '24:00' || time == '00:00'
    return after_midnight('00:00')
  end
  1440 - after_midnight(time)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# Letter Swap
prompt('Letter Swap')

def swap(string)
  string_array = string.split(' ')
  string_array.map! do |word|
    new_word = word.dup
    new_word[0] = word[-1]
    new_word[-1] = word[0]
    new_word
  end
  string_array.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'