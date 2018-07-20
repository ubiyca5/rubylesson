# encoding: UTF-8
=begin
Баев Петр
Задание 1 - Квадратное уравнение
=end

=begin
исключаем ввод пользователем букв или букв+числа, либо пустое
=end
def insert_user(index)
  begin
    puts "Введите коэффициент #{index}"

    d = Float(gets.chomp).to_f 
    return d
  rescue
  # выводим ошибку и просим ввести корректно то есть число или число с плавающей точкой
    puts "Введите число или число с плавающей точкой!"
  retry
  end
end

text = ['a','b','c']
data = []
3.times do |i|
  data << insert_user(text[i])
end

=begin
 data[0] - это a, data[1] - это b, data[2] - это c
 d = b^2 - 4 * a * c
 x1 = (-b + sqrt(d)) / (2 * a) , x2 = (-b - sqrt(d)) / (2 * a) --- d > 0
 x1 = (-b) / (2 * a) --- d == 0
=end

  d = (data[1] ** 2) - 4 * data[0] * data[2]
  puts "Дискриминант: D = #{d}"

if d > 0
  sqrtd = Math.sqrt(d)
  x1 = (-data[1] + sqrtd) / (2 * data[0])
  x2 = (-data[1] - sqrtd) / (2 * data[0])
  puts "корни: x1 = #{x1}, x2 = #{x2}"
elsif d == 0
  x1 = -data[1] / (2 * data[0])
  puts "корень x1 = x2 = #{x1}"
else
  puts "Корней нет"
end


