# frosen_string_literal:true
# encoding: ascii-8bit

# Baev Peter
# Task 1 - Right triangle
# valid Rubocop

# We exclude the user entering letters or letters + numbers, or empty
# please enter correctly that is, a number or number with a floating point

def insert_user(index)
  puts "Введите длину стороны #{index.to_i + 1}"
  Float(gets.chomp)
rescue StandardError
  puts 'Введите число или число с плавающей точкой!'
  retry
end

# insert a, insert b, insert c

data = []
3.times do |i|
  data << insert_user(i)
end

# map takes listable objects and starts a block for each object and returns
# IMPORTANT!!! The original object does not change unless you use map!

data.map! { |n| n * n }

# Find the longest side - hypotenuse
# sorting in ascending order the last element is the hypotenuse
# second option
# h = data.max
# c1, c2 = data.min(2)

data.sort!

if data[0] == data[1] && data[1] == data[2]
  puts 'Треугольник равносторонний'
elsif data[0] == data[1] || data[1] == data[2] || data[2] == data[0]
  puts 'Треугольник равнобедренный'
end

if data[0] + data[1] == data[2]
  puts 'Ваш треугольник прямоугольный!'
else
  puts 'Ваш треугольник не прямоугольный'
end
