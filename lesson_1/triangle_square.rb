# frosen_string_literal:true
# encoding: ascii-8bit

# Baev Peter
# Task 1 - Area of a triangle
# valid Rubocop

# We exclude the user entering letters or letters + numbers, or empty
# please enter correctly that is, a number or number with a floating point
# change message insert 1 or 2

def insert_user(index)
  if index.to_i == 1
    puts 'Введите длину основания'
  else
    puts 'Введите высоту'
  end
  Float(gets.chomp)
rescue StandardError
  puts 'Введите число или число с плавающей точкой!'
  retry
end

puts 'Программа вычисляет площадь треугольника!'

a = insert_user(1)
h = insert_user(2)
square = 0.5 * a * h

puts "Площадь треугольника равна #{square} см2."
