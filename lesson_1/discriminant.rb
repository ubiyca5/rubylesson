# frosen_string_literal:true
# encoding: ascii-8bit

# Baev Peter
# Task 1 - The quadratic equation
# valid Rubocop

# We exclude the user entering letters or letters + numbers, or empty
# please enter correctly that is, a number or number with a floating point
def insert_user(index)
  puts "Введите коэффициент #{index}"
  Float(gets.chomp).to_f
rescue StandardError
  puts 'Введите число или число с плавающей точкой!'
  retry
end

text = %w[a b c]
data = []
3.times do |i|
  data << insert_user(text[i])
end

# data[0] - this is a, data[1] - this is b, data[2] - this is c
# d = b^2 - 4 * a * c
# x1 = (-b + sqrt(d)) / (2 * a) , x2 = (-b - sqrt(d)) / (2 * a) --- d > 0
# x1 = (-b) / (2 * a) --- d == 0

d = (data[1]**2) - 4 * data[0] * data[2]
puts "Дискриминант: D = #{d}"

if d > 0
  sqrtd = Math.sqrt(d)
  x1 = (-data[1] + sqrtd) / (2 * data[0])
  x2 = (-data[1] - sqrtd) / (2 * data[0])
  puts "корни: x1 = #{x1}, x2 = #{x2}"
elsif d.zero?
  x1 = -data[1] / (2 * data[0])
  puts "корень x1 = x2 = #{x1}"
else
  puts 'Корней нет'
end
