
def greeting(name, surname, age)


  if age < 18
    "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать программировать никогда не рано"
  else
    "Привет, #{name} #{surname}. Самое время заняться делом!"
  end 		
end


print ("Введите ваше имя: ")
name = gets.chomp

print("Введите вашу фамилию: ")
surname = gets.chomp

print("Введите ваш возраст: ")
age = gets.chomp.to_i

puts greeting(name, surname, age)
