# encoding: UTF-8
=begin
Баев Петр
Задание 1 - Прямоугольный треугольник
=end

=begin
исключаем ввод пользователем букв или букв+числа, либо пустое
=end
def insert_user(index)
  begin
    puts "Введите длину стороны #{index}"

    d = Float(gets.chomp).to_f 
    return d
  rescue
  # выводим ошибку и просим ввести корректно то есть число или число с плавающей точкой
    puts "Введите число или число с плавающей точкой!"
  retry
  end
end

# a - первое ввел, b - второе ввел, с - третье ввел
data = []

3.times do |i|
   data << insert_user(i+1)
end

=begin
 map принимает перечислемые объекты и запускает блок для каждого объекта и возвращает
 ВАЖНО!!! Исходный объект не изменяется если не использовать map! (c восклицательным знаком)
=end
  
data.map! {|n| n * n}

# Находим самую длинную сторону - гипотенуза 
#сортировка по возрастанию последний элемент это и есть гипотенуза 
data.sort!

if data[0] == data[1] && data[1] == data[2]
  puts "Треугольник равносторонний"
elsif data[0] == data[1] || data[1] == data[2] || data[2] == data[0]
  puts "Треугольник равнобедренный"  
end


if data[0] + data[1] == data[2]
  puts "Ваш треугольник прямоугольный!"
else
  puts "Ваш треугольник не прямоугольный"
end




