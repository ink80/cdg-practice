
def process_word(word)
    if word.end_with?('CS')
        return 2**word.length
    end
    word.reverse
end

print('Введите слово')
word = gets.chomp
puts process_word(word)
