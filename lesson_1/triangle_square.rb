# encoding: UTF-8
=begin
Баев Петр
Задание 1 - Площадь треугольника
=end

=begin
исключаем ввод пользователем букв или букв+числа, либо пустое
=end
def insert_user(index)
  begin
    if index == 1
       puts "Введите длину основания"
    else
       puts "Введите высоту"
    end

    d = Float(gets.chomp).to_f 
    return d
  rescue
  # выводим ошибку и просим ввести корректно то есть число или число с плавающей точкой
    puts "Введите число или число с плавающей точкой!"
  retry
  end
end

puts "Программа вычисляет площадь треугольника!"

a = insert_user(1)
h = insert_user(2)
square = 0.5 * a * h

puts "Площадь треугольника равна #{square} см2."
