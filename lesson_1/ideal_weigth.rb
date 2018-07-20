# encoding: UTF-8
=begin
Баев Петр
Задание 1 - Идеальный вес
=end

# Первая буква имени Большая
puts "Как вас зовут?"
name = gets.chomp.downcase.capitalize

=begin
исключаем ввод пользователем букв или букв+числа
=end

begin
  puts "Какой у вас рост?"
  heigth = Integer(gets.chomp).to_i 
rescue
# выводим ошибку и просим ввести корректно то есть число
  puts "Введите число!"
  retry
end



ideal_weight = heigth - 110

if ideal_weight > 0 
  puts "#{name}, ваш идеальный вес #{ideal_weight}" 
else
  puts "Ваш вес уже оптимальный"
end
