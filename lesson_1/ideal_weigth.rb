# frosen_string_literal:true
# encoding: ascii-8bit

# Baev Peter
# Task 1 - Ideal weight
# valid Rubocop

# The first letter of the name Big

puts 'Как вас зовут?'
name = gets.chomp.downcase.capitalize

# We exclude the user entering letters or letters + numbers, or empty
# please enter correctly - integer

begin
  puts 'Какой у вас рост?'
  heigth = Integer(gets.chomp)
rescue StandardError
  puts 'Введите число!'
  retry
end

ideal_weight = heigth - 110

if ideal_weight > 0
  puts "#{name}, ваш идеальный вес #{ideal_weight}"
else
  puts 'Ваш вес уже оптимальный'
end
