def foobar(a, b)
  if a == 20 || b == 20
    b
  else
    a + b
  end
end

print('Введите первое число: ')
a = gets.chomp.to_i

print('Введите второе число: ')
b = gets.chomp.to_i

puts foobar(a, b)
